
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
