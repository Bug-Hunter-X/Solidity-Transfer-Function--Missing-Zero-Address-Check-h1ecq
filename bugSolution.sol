```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  require(to != address(0), "Cannot send to zero address");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}
```