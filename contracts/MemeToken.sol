// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title MemeToken — Seven Chain Creator Kit
 * @notice Deploy your meme token on Seven Chain (Chain ID: 70007)
 *         Edit the constructor defaults before deploying.
 *         Full guide: https://github.com/umairkhan2582/seven-creator-kit
 */

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract MemeToken is IERC20 {
    // ─── Token metadata ───────────────────────────────────────────────────────
    string public name;
    string public symbol;
    uint8  public constant decimals = 18;

    // ─── State ────────────────────────────────────────────────────────────────
    uint256 private _totalSupply;
    address public owner;

    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;

    // ─── Events ───────────────────────────────────────────────────────────────
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event Burn(address indexed from, uint256 amount);

    // ─── Modifiers ────────────────────────────────────────────────────────────
    modifier onlyOwner() {
        require(msg.sender == owner, "MemeToken: caller is not owner");
        _;
    }

    // ─── Constructor ──────────────────────────────────────────────────────────
    /**
     * @param _name        Token name  (e.g. "PepeCoin")
     * @param _symbol      Token symbol (e.g. "PEPE")
     * @param _supply      Total supply WITHOUT decimals (e.g. 1_000_000_000 for 1B tokens)
     * @param _recipient   Address that receives the full supply on deploy (usually msg.sender)
     */
    constructor(
        string memory _name,
        string memory _symbol,
        uint256 _supply,
        address _recipient
    ) {
        require(bytes(_name).length > 0, "MemeToken: name required");
        require(bytes(_symbol).length > 0, "MemeToken: symbol required");
        require(_supply > 0, "MemeToken: supply must be > 0");
        require(_recipient != address(0), "MemeToken: invalid recipient");

        name         = _name;
        symbol       = _symbol;
        owner        = msg.sender;
        _totalSupply = _supply * (10 ** decimals);

        _balances[_recipient] = _totalSupply;
        emit Transfer(address(0), _recipient, _totalSupply);
    }

    // ─── ERC-20 Core ──────────────────────────────────────────────────────────
    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address account) external view override returns (uint256) {
        return _balances[account];
    }

    function transfer(address to, uint256 amount) external override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function allowance(address _owner, address spender) external view override returns (uint256) {
        return _allowances[_owner][spender];
    }

    function approve(address spender, uint256 amount) external override returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) external override returns (bool) {
        uint256 currentAllowance = _allowances[from][msg.sender];
        require(currentAllowance >= amount, "MemeToken: insufficient allowance");
        unchecked { _allowances[from][msg.sender] = currentAllowance - amount; }
        _transfer(from, to, amount);
        return true;
    }

    // ─── Burn ─────────────────────────────────────────────────────────────────
    /// @notice Burn tokens from your own balance. Reduces total supply permanently.
    function burn(uint256 amount) external {
        require(_balances[msg.sender] >= amount, "MemeToken: insufficient balance");
        _balances[msg.sender] -= amount;
        _totalSupply          -= amount;
        emit Burn(msg.sender, amount);
        emit Transfer(msg.sender, address(0), amount);
    }

    // ─── Ownership ────────────────────────────────────────────────────────────
    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "MemeToken: zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function renounceOwnership() external onlyOwner {
        emit OwnershipTransferred(owner, address(0));
        owner = address(0);
    }

    // ─── Internal ─────────────────────────────────────────────────────────────
    function _transfer(address from, address to, uint256 amount) internal {
        require(from != address(0), "MemeToken: transfer from zero");
        require(to   != address(0), "MemeToken: transfer to zero");
        require(_balances[from] >= amount, "MemeToken: insufficient balance");
        unchecked {
            _balances[from] -= amount;
            _balances[to]   += amount;
        }
        emit Transfer(from, to, amount);
    }

    function _approve(address _owner, address spender, uint256 amount) internal {
        require(_owner   != address(0), "MemeToken: approve from zero");
        require(spender != address(0), "MemeToken: approve to zero");
        _allowances[_owner][spender] = amount;
        emit Approval(_owner, spender, amount);
    }
}
