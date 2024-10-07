import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/pages/HomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
          0xFF2C5EAC), // Background color similar to the blue in the image
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 10),

                // Logo and top image
                SvgPicture.asset(
                  'assets/icons/logo_inicio.svg', // Make sure to use your own URL or a local resource
                  height: 150,
                ),
                // const SizedBox(height: 10),

                const Text(
                  'Cultivate with precision.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.greenAccent,
                  ),
                ),
                const SizedBox(height: 40),

                // Fingerprint sensor (visual only)
                Text(
                  'Touch the fingerprint sensor',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.greenAccent.withOpacity(0.8),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/huella.svg', // Make sure to use your own URL or a local resource
                  height: 100,
                ),

                const SizedBox(height: 30),

                // Username text field
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    style: TextStyle(
                        color: Color.fromARGB(
                            255, 255, 255, 255)), // Change text color

                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.white),
                      // filled: true,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password text field
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    style: TextStyle(
                        color: Color.fromARGB(
                            255, 255, 255, 255)), // Change text color

                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      // filled: true,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 20),

                // Log in button
                Container(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the second screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF32D14B), // Button background green
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(fontSize: 18, color: Color(0xFF2C5EAC)),
                    ),
                  ),
                ),

                // "Forgot Password" link
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),

                const SizedBox(height: 10),

                // Create account button
                Container(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Create',
                      style: TextStyle(fontSize: 18, color: Color(0xFF2C5EAC)),
                    ),
                  ),
                ),

                // "Don't have an account?" link
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Don't Have an Account?",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
