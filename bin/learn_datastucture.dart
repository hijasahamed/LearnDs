mergesort(List arr){
  if(arr.length <=1){
    return arr;
  }
  int mid=(arr.length/2).floor();
  List firsthalf = arr.sublist(0,mid);
  List secondhalf = arr.sublist(mid,arr.length);
  return join(mergesort(firsthalf), mergesort(secondhalf));
}

join(List firsthalf,List secondhalf){
  List newlist=[];
  while(firsthalf.isNotEmpty && secondhalf.isNotEmpty){
    if(firsthalf[0] <= secondhalf[0]){
      newlist.add(firsthalf.removeAt(0));
    }
    else{
      newlist.add(secondhalf.removeAt(0));
    }
  }
  List a=[...newlist,...firsthalf,...secondhalf];
  return a;
}

main(){
  List arr=[5,1,2,4,3];
  print(mergesort(arr));
}