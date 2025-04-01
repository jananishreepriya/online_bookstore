import 'package:flutter/material.dart';
import '../models/book.dart';
import 'book_detail_screen.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key});

  final List<Book> books = const [
    Book(title: 'Flutter for Beginners', author: 'John Doe', price: 10.99),
    Book(title: 'Dart Programming', author: 'Jane Smith', price: 12.50),
    Book(title: 'Mastering UI/UX', author: 'Alice Brown', price: 8.75),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book List')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index].title),
            subtitle: Text('By ${books[index].author}'),
            trailing: Text('\$${books[index].price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(book: books[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
