sum(List arr,int i){
  if(i==arr.length){
    return 0;
  }
  else{
    return arr[i]+ sum(arr,i+1);
  }
}

main(){
  List arr=[1,2,3,4,5];
  int a=sum(arr,0);
  print(a);
}