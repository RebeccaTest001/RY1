function changeFont(aInput,bTextid){
    if(aInput.checked){
        document.getElementById(bTextid).style.fontWeight="bold";        
    }else{
        document.getElementById(bTextid).style.fontWeight="normal";
    }
}