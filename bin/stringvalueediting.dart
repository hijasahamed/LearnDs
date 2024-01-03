main(){
  String str='abcdefg';
  int index=str.indexOf('d');
  if(index !=-1){
    String a=str.substring(0,index)+'x'+str.substring(index+1);
    print(a);
  }
  else{
    print('no');
  }
}