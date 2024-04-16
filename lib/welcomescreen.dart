import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'model.dart';

class welcomescreen extends StatefulWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  State<welcomescreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      bottomNavigationBar: Container(
        color: Colors.red, // Set bottom bar background color to red
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          'Promasters Only',
          style: TextStyle(
            color: Colors.white, // Set text color to white
            fontSize: 30,
            fontWeight: FontWeight.bold, // Set text to bold
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20), // Apply padding to the entire body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start horizontally
          children: [
            // Padding(
            //   padding: EdgeInsets.only(bottom: 20), // Apply bottom padding to separate image from texts
            //   child: Image.asset(
            //     'assets/images/van2.PNG', // Replace 'your_image.png' with the actual path to your image asset
            //     width: 150, // Adjust width as needed
            //     height: 150, // Adjust height as needed
            //   ),
            // ),
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.only(left: 80), // Apply bottom padding to separate first text from second text
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align texts to the start horizontally
                children: [
                  Text(
                    'ProMasters Only\n  HOMESCREEN', // Replace with your first text
                    style: TextStyle(fontSize: 20, color: Colors.green), // Adjust font size as needed
                    textAlign: TextAlign.center, // Center the text horizontally
                  ),
                  SizedBox(height: 40), // Spacer between texts
                  Text(
                    'Click Option below:', // Replace with your second text
                    style: TextStyle(fontSize: 20, color: Colors.green), // Adjust font size as needed
                    textAlign: TextAlign.center, // Center the text horizontally
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align containers to the start and end horizontally
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to the gauge panel screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MultiProvider(
                          providers: [
                            ChangeNotifierProvider(create: (_) => ObdReader()),
                          ],
                          child: MyApp(),

                          // Add any other widgets or configuration needed for the gauge panel screen
                        ))
                    );
                  },
                  child: Container(
                    width: 170,
                    height: 100,
                    padding: EdgeInsets.all(20), // Padding for the container
                    color: Colors.blue, // Background color
                    child: Center(
                      child: Text(
                        'Gauge Panel Screen', // Text content
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 20, // Text size
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  height: 100,
                  padding: EdgeInsets.all(20), // Padding for the container
                  color: Colors.green, // Background color
                  child: Center(
                    child: Text(
                      'Code Reader Screen', // Text content
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 20, // Text size
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
