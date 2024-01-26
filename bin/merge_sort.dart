mergesort(List arr) {
  ///   0(nlogn)TS
  if (arr.length <= 1) {
    return arr;
  }
  int mid = (arr.length / 2).floor();
  List firsthalf = arr.sublist(0, mid);
  List lasthalf = arr.sublist(mid, arr.length);

  return join(mergesort(firsthalf), mergesort(lasthalf));
}

join(List firsthalf, List lasthalf) {
  List newList = [];
  while (firsthalf.isNotEmpty && lasthalf.isNotEmpty) {
    if (firsthalf[0] <= lasthalf[0]) {
      newList.add(firsthalf.removeAt(0));
    } else {
      newList.add(lasthalf.removeAt(0));
    }
  }
  List a = [...newList, ...firsthalf, ...lasthalf];
  return a;
}

main(){
  List arr=[2,4,5,1,3];
  print(mergesort(arr));
}