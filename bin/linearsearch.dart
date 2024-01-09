// find target is in array 
main() {
  List arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  checking(10, 0, arr);
}

checking(int target, count, arr) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      print('target found in position $i');
      count++;
      break;
    }
  }
  if (count == 0) {
    print('no tagert found in the list');
  }
}



// from array find the odd values


// main() {
//   List arr = [1, 2, 3, 4, 5, 6, 7, 8, 9,10];
//   var res=checking(arr);
//   print(res);
// }

// checking(arr) {
//   List a=[];
//   for (int i = 0; i < arr.length; i++) {
//     if (arr[i] %2!=0) {
//       a.add(arr[i]);
//     }
//   }
//   return a;
// }