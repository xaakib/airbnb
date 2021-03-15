import 'package:flutter/material.dart';

class ExplorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          "https://a0.muscache.com/pictures/d0370bd5-2344-49c9-a4cf-26229daed288.jpg",
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                          height: 400,
                        ),
                        Positioned(
                          bottom: 120,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Go\nNear",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 70,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 120,
                        width: 300,
                        color: Colors.red,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.0),
                              child: Image.network(
                                'https://googleflutter.com/sample_image.jpg',
                                height: 120,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rangour",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "4.5 hour drive",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.black),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 24.0, vertical: 18.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
