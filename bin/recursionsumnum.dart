 addNumbers(n){
  print('Value of n is $n');
  // terminassion condition
  if(n<=1){
    return 1;
  }
  else{
    return n + addNumbers(n-1);
  }
}

main(){
  var sum=addNumbers(5);
  print('The sum is $sum');
}