import 'package:flutter/material.dart';

class catatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),
              labelText: 'Produk',
              hintText: 'Masukkan nama produk',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),
              labelText: 'Harga',
              hintText: 'Masukkan harga',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),
              labelText: 'Kategori',
              hintText: 'Masukkan kategori produk',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
              ),
              labelText: 'Image',
              hintText: 'Choose file ',
            ),
          ),
        ),

      
         SizedBox(height: 35),
           ElevatedButton(
          onPressed: () {},
           style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 0, 81, 255)),
           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12.0),
                  ),
                 ),
              minimumSize: MaterialStateProperty.all(Size(250.0, 45.0)),
            ),
                child: Text(
                "Submit",
                style: TextStyle(
                    fontSize: 20,
                     color: Colors.white,
                    fontWeight: FontWeight.bold),
                ),
           ),
       ]
     ) 
   ),

      
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            )
          ],
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
        )
        );
  }
}


