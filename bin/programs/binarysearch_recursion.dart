binaryfunction(List arr,int target,left,right){
 while(left<right){
  int mid=(left+right)~/2;
  if(target==arr[mid]){
    return mid;
  }
  else if(target<arr[mid]){
    return binaryfunction(arr, target,left,mid-1);
  }
  else{
    return binaryfunction(arr, target, mid+1, right);
  }
 }
}

main(){
  List arr=[1,2,3,4,5];
  var a=binaryfunction(arr, 3, 0, arr.length-1);
  print(a);
}