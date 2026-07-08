mixin Loggable {
  void log(String msg) {
    print('${DateTime.now()}, Log: $msg');
  }
}

class Stack<T> with Loggable {
  final List<T> _items = [];

  void push(T item) {
    _items.add(item);
    log('Pushed item: $item');
  }

  T pop() {
    if (_items.isEmpty) {
      throw Exception('Stack is empty');
    }
    T item = _items.removeLast();
    log('Popped item: $item');
    return item;
  }

  @override
  String toString() {
    return 'Stack contents: $_items';
  }

  bool get isEmpty => _items.isEmpty;

  int get length => _items.length;
}

void main() {
  // Example usage of Stack with logging
  Stack<int> stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print('Stack length: ${stack.length}');
  int poppedItem = stack.pop();
  print('Popped item: $poppedItem');
  print(stack);
}

