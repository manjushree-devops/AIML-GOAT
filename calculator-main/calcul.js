let input =document.querySelector('.input');
function calculate(value){
  input.value =input.value+value;
}
function answer(){
  try{
    input.value = eval(input.value);
  }
  catch(error){
    input.value = 'Error';
  }
}
function clear_button(){
  input.value = "";
}