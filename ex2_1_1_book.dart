class Book {
  Book(this.title, this.author, this.price);

  String title;
  String author;
  double price;

  void showDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Price: \$${price.toStringAsFixed(2)}');
  }
}

void main() {
  Book book1 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 10.99);
  Book book2 = Book('1984', 'George Orwell', 8.99);

  book1.showDetails();
  print(''); // Print a blank line for better readability
  book2.showDetails();
}