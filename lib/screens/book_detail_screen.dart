import 'package:flutter/material.dart';
import '../models/book.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${book.title}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Author: ${book.author}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Price: \$${book.price}', style: const TextStyle(fontSize: 18, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
