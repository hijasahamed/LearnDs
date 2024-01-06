main(){
  String str='good morning';
  int index=str.indexOf('g');
  adding(str, index);
}

adding(str,index){
  var data=str.substring(0,str.length)+' guys';
  print(data);
}

