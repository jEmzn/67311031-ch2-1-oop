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
      print('Stack is empty. Cannot pop item.');
      return -1 as T; // Return a default value to satisfy the return type
    }
    T item = _items.removeLast();
    log('Popped item: $item');
    return item;
  }

}

void main() {
  Stack<int> stack = Stack<int>();
  stack.pop();
  stack.push(1);
  stack.push(2);
  int poppedItem = stack.pop();
  print('Popped item: $poppedItem');
}

