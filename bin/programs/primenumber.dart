// one method normal checking prime numbers till the target 
void main() {
  int isprime;
  for(int i=1;i<=10;i++){
    isprime=0; 
    for(int j=1;j<=i;j++){
      if(i%j==0){
        isprime++;
      }
    }
    if(isprime==2){
      print(i);
    }
  }
}

// second method check if target is prime

void main2() {
  int t=2;
  int prime=0;
  for(int i=1;i<=t;i++){
    if(t%i==0){
      prime++;
    }
  }
  if(prime==2){
    print('target is prime');
  }
  else{
    print('target not prime');
  }
}

// by using recursuin method

main3(){
  int check=2;
  int val=(check/2).floor();
  print(val);
  var result=isPrime(check, val);
  print(result);
}

isPrime(int check,val){
  if(check<=1){
    return false;
  }
  if(val==2){
    return true;
  }
  if(check %val==0){
    return false;
  }
  return isPrime(check, val-1);
}