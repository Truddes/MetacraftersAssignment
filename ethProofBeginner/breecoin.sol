// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract breeCoin {

    string public tokenName = "breeCoin";
    string public tokenAbrrv = "BC";
    
    uint public totalSupply = 0;

    uint trudysBalance = 0;
    mapping (address => uint) public balances

        
    ; function mint(address _address, uint _amount ) public {
        totalSupply += _amount;
        balances[_address] += _amount;
    }
    
    function burn(address _address, uint _amount) public {
        require(balances[_address] >= _amount, "forbidden");
        totalSupply -=  _amount;
        balances[_address] -= _amount;
    }
}
