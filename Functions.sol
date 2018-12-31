pragma solidity ^0.4.0;

contract Functions{
    string public text = '';
    int public numberOfChanges = 0;
    
    function changeToHello(){
        numberOfChanges += 1;
        text = 'Hello World';
    }
    
   
    
    function callChangeToHello(){
        changeToHello();
        
        if (numberOfChanges==2){
            changeToBye();
            
        }
    }
        
     function changeToBye(){
        text = 'Bye bye baby';
    }
   
}