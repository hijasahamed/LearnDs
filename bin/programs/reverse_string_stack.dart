class Stack {
  List<String> _items = [];

  void push(String value) {
    _items.add(value);
  }

  String? pop() {
    if (_items.isNotEmpty) {
      return _items.removeLast();
    }
    return null;
  }

  bool get isEmpty => _items.isEmpty;
}

String reverseStringWithStack(String input) {
  Stack stack = Stack();

  // Push each character onto the stack
  for (int i = 0; i < input.length; i++) {
    stack.push(input[i]);
  }

  // Pop characters from the stack to build the reversed string
  String reversedString = '';
  while (!stack.isEmpty) {
    reversedString += stack.pop()!;
  }

  return reversedString;
}

void main() {
  String originalString = 'abcdefg';
  String reversedString = reverseStringWithStack(originalString);

  print("Original String: $originalString");
  print("Reversed String: $reversedString");
}
