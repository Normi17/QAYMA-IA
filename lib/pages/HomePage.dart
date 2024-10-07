import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/pages/ResultadoConsultaPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/images/blanco.png', 
                fit: BoxFit.cover,
              ),
            ),
            // Main content
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: double.infinity,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with logo and greeting
                  const SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SvgPicture.asset(
                      'assets/icons/logo_homepage.svg',
                      height: 60,
                    ),
                  ),

                  // Welcome text and user image
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 49, 104, 197),
                                )),
                            Text('Javier Mesa',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Color.fromARGB(255, 49, 104, 197),
                                )),
                          ],
                        ),
                        Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors
                                  .green, // Borde verde como en la imagen proporcionada
                              width: 3.0,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/11.jpg'), // Reemplaza con tu imagen en los assets
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Query bar
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 49, 104, 197),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Query bar.',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 130,
                                    child: const TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Message',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 86, 243, 101),
                                          shape: BoxShape.circle),
                                      child: const Icon(Icons.mic,
                                          size: 35,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255))),
                                  onPressed: () {
                                    // Action for the microphone
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ResultadoConsultaPage()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // List of previous queries
                  const SizedBox(height: 40),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        bool isEven = index % 2 == 0;

                        return Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: isEven ? 0 : 95,
                              right: isEven ? 60 : 0,
                            ),
                            child: QueryItem(
                              text: [
                                'What is the rain forecast for the next few days?',
                                'Will there be any frost in my area this week?',
                                'Is it a good idea to plant apples at this location?',
                                'What is the rain forecast for the next few days?'
                              ][index],
                              imagePath: 'assets/image.png',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // User button
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      height: 65,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 49, 104, 197),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/logo.svg', // Make sure to use your own URL or a local resource
                            height: 50,
                          ),
                          Row(
                            children: [
                              const Text(
                                "|",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 1)),
                                  child: const Icon(Icons.person,
                                      size: 40, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QueryItem extends StatelessWidget {
  final String text;
  final String imagePath;

  QueryItem({required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 0, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green.shade600,
              shape: BoxShape.circle,
            ),
            child: FittedBox(
                child: Image.asset(
              "assets/icons/send.png",
              height: 25,
              width: 25,
            )),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
