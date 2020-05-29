import 'package:bookangy/provider/cartItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CartScreen.dart';
import 'book_model.dart';


class BookDetails extends StatelessWidget {
  final Book book;
  int _quantity = 1;
  BookDetails({this.book});
  @override
  Widget build(BuildContext context) {
    // Book bookk = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
        children: <Widget>[
        Stack(
        children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
    child: Container(
    height: MediaQuery.of(context).size.height * 0.5,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    ),
    image: DecorationImage(
    image: NetworkImage(book.imageUrl),
    fit: BoxFit.cover,
    ),
    color: Colors.white,
    boxShadow: [
    BoxShadow(
    color: Colors.grey[200],
    blurRadius: 6,
    spreadRadius: 1,
    ),
    ],
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 260.1,top: 20),
    child: Row(
    children: <Widget>[
    Text("show your Card -->" ,style: TextStyle(fontSize: 13.0,color: Colors.green, fontWeight: FontWeight.bold , backgroundColor: Colors.white),
    ),
    GestureDetector(
    onTap: () {
    Navigator.pushNamed(context, CartScreen.id);
    },
    child: Icon(Icons.shopping_cart , size: 35.1,)),
    ],
    ),


    ),

    Padding(
    padding: const EdgeInsets.all(8.0),
    child: FlatButton(
    onPressed: () {
    Navigator.pop(context);
    },
    child: Text(
    'back',
    style: TextStyle(
    color: Colors.deepPurple,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    ),
    ),
    color: Colors.white,
    ),
    ),


    ],
    ),
    Text(
    book.bookTitle,
    style: TextStyle(
    color: Colors.deepPurple,
    fontWeight: FontWeight.bold,
    fontSize: 25),
    ),
    SizedBox(
    height: 10,
    ),
    Text(
    book.authorName,
    style: TextStyle(
    color: Colors.grey,
    fontSize: 16,
    ),
    ),
    SizedBox(
    height: 5,
    ),
    Text('${book.numPages} Pages'),
    SizedBox(
    height: 10,
    ),
    Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
    children: <Widget>[
    Icon(
    Icons.star,
    color: Colors.amber,
    ),
    Text('Rating: ${book.stars}')
    ],
    ),
    ),
    SizedBox(
    height: 10,
    ),
    Text(
    'Description',
    style: TextStyle(
    color: Colors.deepPurpleAccent,
    fontSize: 16,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
    BoxShadow(
    color: Colors.grey[200],
    offset: Offset(0, 0),
    blurRadius: 3,
    spreadRadius: 1,
    ),
    ]),
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
    book.description.replaceAll(RegExp(r'<br />'), ' '),
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 16,
    ),
    ),
    ),
    ),
    ),

