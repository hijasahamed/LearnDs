void main() {
  List arr=[5,1,7,4,6,2,3];
  for(int i=0;i<arr.length;i++){
    for(int j=0;j<arr.length-i-1;j++){
      if(arr[j]>arr[j+1]){
        int temp=arr[j+1];
        arr[j+1]=arr[j];
        arr[j]=temp;
      }
    }
  }
  print(arr);
}