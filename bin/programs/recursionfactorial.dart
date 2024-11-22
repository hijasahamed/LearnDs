// find factorial using recursion function 
f(n){
  if(n<=1){
    return 1;
  }
  else{
    return n*f(n-1);
  }
}

main(){
int a=f(5);
print(a);
}