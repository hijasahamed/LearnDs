main(){
  List arr=[1,2,3,4,5,6,7,8,9];
  int t=6;
  for(int i=0;i<arr.length;i++){
    if(arr[i]==t){
      print('target found in position $i');
      break;
    }
  }
}