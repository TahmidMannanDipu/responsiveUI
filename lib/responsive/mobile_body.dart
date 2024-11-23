import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: const Text(
          "M O B I L E",
          style: TextStyle(
            color: Colors.white,
          ),

        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,

        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.indigo[400],
              ),
            ),
          ),
          ...List.generate(
            8,
                (index) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.indigo[400],
                height: 120,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
