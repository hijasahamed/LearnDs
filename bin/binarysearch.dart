 /*binarysearch(List arr, int target) {-
  int l = 0;
  int r = arr.length - 1;
  while (l < r) {
    int rounded = (l + r) ~/ 2;
    // int rounded = middleindex.floor();

    if (target == arr[rounded]) {
      return rounded;
    }
    if (target < arr[rounded]) {
      r = rounded - 1;
    } else {
      l = rounded + 1;
    }
  }
}*/

/*binaryChecking(List arr,int target){
  int l=0;
  int r=arr.length-1;
  while(l<r){
    int mid=(l+r)~/2;
    if(target==arr[mid]){
      print('target found in index $mid');
      return;
    }
    if(target < arr[mid]){
      r=mid-1;
    }
    else{
      l=mid+1;
    }
  }
  print('Target not found in the list');
}*/

binaryChecking(List arr,int target){
  int l=0;
  int r=arr.length-1;
  while(l<r){
    int min=(l+r)~/2;
    if(target==arr[min]){
      return min;
    }
    else if(target==arr[l]){
      return l;
    }
    else if(target==arr[r]){
      return r;
    }
    else if(target < arr[min]){
      r=min-1;
    }
    else{
      l=min+1;
    }
  }
}

main(){
  List arr=[5,10,15,20,25,30,35,40];
 var res=binaryChecking(arr, 30);
 print(res);
}