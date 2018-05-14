pragma solidity 0.4.19;

contract remittance {
    
    //storing hashed passwords
    mapping(bytes32) public hashPassword;
    
    //storing balances WIP
    mapping(address => uint) public balances;
    
    //logs who sent how much funds to the contract (if any)
    event LogReceiveFunds(uint amount, address sender);
    
    //logs who interacted with the contract and if they set a destination 
    event LogDestination(address sender, address destination);
    
    //logs passwords that the individual submitted
    event LogPasswords(uint passwords);
    
    //depositing the funds into the contract and setting the receivers value
    
    function depositFunds(bytes32 hashPass) public payable {
        require(msg.value > 0);
        hashPassword[hash]= hashPass
        balances[receiver1] += msg.value;
    }
    
    function withdrawFunds(bytes32 providedPw1, bytes32 providedPw2) public payable {
        
    //Hash the provided password
        bytes32 providedHash = keccak256(providedPw1, providedPw2)
        
    //check passwords and addresses
        require (providedHash = hashPass);
        msg.sender.transfer();
    //set hashpass to 0 (no hash can produce 0 outcome so it must be reset by using the deposit funds) WIP
        hashPass = 0;   
     }

    function cancelWithdrawl(bytes32 providedPw0) public payable {
    
        bytes providedHash = keccak256(providedPw0);
        require (providedHash0 = hashPass);
        require (msg.sender = owner);
        msg.sender.transfer();
        
        //WIP
        hashPass = 0;
    
    }
}
