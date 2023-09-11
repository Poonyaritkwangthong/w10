import 'package:flutter/material.dart';

import 'booklist.dart';


class BookGrid extends StatelessWidget {
  final List<Book> Books = [
   Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม1',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/1.jpg',
    ),
     Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม7-8',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/2.jpg',
    ),
    Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม5-6',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/3.jpg',
    ),
    Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม5',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/4.jpg',
    ),
    Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม11',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/5.jpg',
    ),
    Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม10',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/6.jpg',
    ),
    Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม8',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/7.jpg',
    ),
    Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม23',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/8.jpg',
    ),
    Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม29',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/9.jpg',
    ),
    Book(
      name: 'Tokyo Revengers',
      Volume: 'เล่ม28',
      Writer: 'เคน วากุอิ',
      released: 2017,
      price: '68',
      img: 'lib/images/10.jpg',
    ),
  ];
  BookGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tokyo Revengers Book List',
          style: TextStyle(color: Colors.white
            ),
          ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.pink,
      body: GridView.builder(
          padding: EdgeInsets.all(6),
          itemCount: Books.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 5),
          itemBuilder: ((context, index) {
            return Column(
              children: [

                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    
                    image: DecorationImage(
                      image: AssetImage(Books[index].img),
                      fit: BoxFit.contain
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                  Books[index].name,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  ),
                ),
                SizedBox(width: 2),
                 Text(
                  Books[index].Volume,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  ),
                  
                ),
               
                  ],
                ),
               Column(
                 children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                      "ราคา",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      ),
                      
                    ),
                    SizedBox(width: 2),
                      Text(
                      Books[index].price,
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      ),
                      
                    ),
                    SizedBox(width: 2),
                     Text(
                      "บาท",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      ),
                      
                    ),
                    ],
                   ),
                 ],
               )

              ],
            );
          })),
    );
  }
}
