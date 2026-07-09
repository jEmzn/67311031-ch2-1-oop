class Book {
  // Constructor
  Book(this.title, this.author, this.price);

  String title;
  String author;
  double price;

  void showDetails() {
    print('Title: $title');
    print('Author: $author');
    print('Price: ${price.toStringAsFixed(2)} Baht');
  }
}

void main() {
  Book book1 = Book('นิทานอีสป', 'อีสป', 100.00);
  Book book2 = Book('นิทานเวตาล', 'ศิวทาส', 120.00);

  book1.showDetails();
  print('');
  book2.showDetails();
}
