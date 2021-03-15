import 'package:flutter/material.dart';

class ExplorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                Positioned(
                  bottom: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    // ignore: deprecated_member_use
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextButton(
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Text(
                          "Explore nearby stays",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      primary: false,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                                height: 120,
                                width: 300,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        'https://www.lifewire.com/thmb/BQdMoVsHlk8HaZiZ2tv0elBfFO8=/1920x1080/filters:no_upscale():max_bytes(150000):strip_icc()/tropical-beach-wallpaper-beach-backgrounds-587fbb765f9b584db3241860.jpg',
                                        height: 100,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Rangour",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "4.5 hour drive",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                            Container(
                                height: 120,
                                width: 300,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        'https://www.lifewire.com/thmb/BQdMoVsHlk8HaZiZ2tv0elBfFO8=/1920x1080/filters:no_upscale():max_bytes(150000):strip_icc()/tropical-beach-wallpaper-beach-backgrounds-587fbb765f9b584db3241860.jpg',
                                        height: 100,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Rangour",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "4.5 hour drive",
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Live anywhere",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      primary: false,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "https://media.istockphoto.com/photos/beautiful-luxury-home-exterior-at-twilight-picture-id1026205392?k=6&m=1026205392&s=612x612&w=0&h=pe0Pqbm7GKHl7cmEjf9Drc7Fp-JwJ6aTywsGfm5eQm4=",
                                        )),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Entire homes",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
