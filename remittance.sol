pragma solidity 0.4.19;

contract remittance {
    
    //storing hashed passwords
    mapping(bytes32) public passwords;
    
    //storing balances
    mapping(address => uint) public balances;
    
    //setting the destination for the funds (for re-usability)
    mapping(uint => address) public address;
    
    //logs who sent how much funds to the contract (if any)
    event LogReceiveFunds(uint amount, address sender);
    
    //logs who interacted with the contract and if they set a destination 
    event LogDestination(address sender, address destination);
    
    //logs passwords that the individual submitted
    event LogPasswords(uint passwords);
    
    //depositing the funds into the contract and setting the receivers value
    
    function depositFunds(address destination, uint value, bytes32 password1, bytes32 password2, bytes32 password0) public payable {
        require(msg.value > 0);
        
        //write the passwords into storage
        passwords[Owner] = password0;
        passwords[Bob] = password1;
        passwords[Carol] = password2;
        
        //provide the destination address
        address[addrCarol] = destination;
        address[Owner] = msg.sender;
        
        //assign the value to destination
        balances[receiver1] += msg.value;
    }
    
    
    function withdrawFunds(bytes32 providedPw1, bytes32 providedPw2) public payable {
        
        //Hash the provided password
        keccak256(providedPw1) = providedHash1;
        keccak256(providedPw2) = providedHash2;
        
        //check passwords and addresses
        require providedHashB = passwords[Bob];
        require providedHashC = passwords[Carol];
        require msg.sender = addrCarol;
       
            msg.sender.transfer();
            
     }

    function cancelWithdrawl(bytes32 providedPw0) public payable {
    
        keccak256(providedPw0) = providedHash0;
        require providedHash0 = passwords[Owner];
        require msg.sender = owner;
        msg.sender.transfer(balances[receiver1]);
    
    }
}
