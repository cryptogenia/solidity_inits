pragma solidity ^0.4.0;

contract HelloWorldContract {
    string word = 'Hello Word!';
    address owner;
    
    function HelloWorldContract(){ //al llamarse como el contrato, solo se ejecuta cuando se lanza el contrato y se sube a la blockchain
        owner = msg.sender;
    }
    //los modifiers han de estar debajo  de la funcion con nombre del contrato
    modifier onlyOwner{
        if (owner != msg.sender){
            throw;
        }else{
            _;
        }
    }
    
    function GetWord() constant  returns(string){
        return word;
    }
    function SetWord(string newWord) onlyOwner  returns(string){
        /*if (owner != msg.sender){
            return 'no eres el creador del contrato';
        } cambiamos esto por meterle el onlyOwner en esta funcion*/
        word = newWord;
        return 'Sí eres el creador del contrato';
        
    }
}