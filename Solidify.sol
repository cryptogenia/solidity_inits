pragma solidity ^0.4.0;

contract SolidifyKnowledge {
    
    string word;
    uint number;
    address owner;
        
        
    function SolidifyKnowledge(string _word){
        word = _word;
        number = 42;
        owner = msg.sender;
        
    }
    
    event Changed(address a);
    
    modifier onlyOwner{
        //no se porqué no lo acepta el require, asi que le meto un if   
        //require(msg.sender == word);//es como un if, si no se cumple devuelve error
        if(msg.sender == owner){
          _;//sirve para decir que siga ejecutando todo  
        }else {
            throw;
        }
        
    }
    
    function getWord() constant returns (string){
        return word;
    }
    
    function setWord(string w) onlyOwner {
        word = w;
        Changed(msg.sender);
    }
    
    
}