void main() {
  List array=[5,1,7,4,6,2,3];
  for(int i=0;i<array.length;i++){
    int current=array[i];
    int j=i-1;
    while(j>=0 && array[j]>current){
      array[j+1]=array[j];
      j--;
    }
    array[j+1]=current;
  }
  print(array);
}