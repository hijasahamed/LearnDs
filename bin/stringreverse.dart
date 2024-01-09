void main(){
  String str='abcdefg';
  // one method
  String revstr=str.split('').reversed.join();
  print(revstr);
  // another method
  var a=reverse(str);
  print(a);
}

reverse(s){
  String res='';
  for(int i=s.length-1;i>=0;i--){
    res +=s[i];
  }
  return res;
}