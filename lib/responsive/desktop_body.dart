import 'package:flutter/material.dart';
import 'package:responsive_design/responsive/dimentions.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Check if the screen width is wide enough for desktop view
        bool isDesktop =
            constraints.maxWidth > mobileWidth; // Adjust breakpoint as needed

        return Scaffold(
          backgroundColor: Colors.indigo[200],
          appBar: AppBar(
            title: const Text(
              "D E S K T O P",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.indigo,
          ),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Expanded(
                flex: 3,
                child: ListView(
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
              ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      color: Colors.indigo[400],
                      width: 200,
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
