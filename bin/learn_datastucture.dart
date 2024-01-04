main(){
  List arr=[10,20,30,40,50,60,70];
  binarysearch(arr, 10);
}

binarysearch(List arr,int target){
  int l=0;
  int r=arr.length-1; 
  while(l<r){
    int min=(l+r)~/2;
    if(target==arr[min]){
      print('Target found at index $min');
      return;
    }
    else if(target < arr[min]){
      r=min-1;
    }
    else{
      l=min+1;
    }
  }
  // print('No target found in the list');
}

