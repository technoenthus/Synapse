import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gif/gif.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synapse/interpreterscreen.dart';
import 'package:synapse/learningmode.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}






class MyHomePage extends StatefulWidget { 
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late GifController _controller; // Declare the controller

  @override
  void initState() {
    super.initState();
    _controller = GifController(vsync: this); // Initialize the controller
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color(0xFF53FDCA), 
              Color(0xFFFFFF00),
            ],
            radius: 0.6,
            center: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            SizedBox(
              width: 300.0,
              child: Text(
                "Synapse",
                textAlign: TextAlign.center,
                style: GoogleFonts.cookie(
                  fontSize: 110,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 13, 13, 13),
                ),
              ),
            ),

            const SizedBox(height: 0),
            SizedBox(
              width: 300,
              height: 39,
              child: Center(
                child: DefaultTextStyle(
                  style: GoogleFonts.ebGaramond(
                    color: const Color.fromARGB(255, 12, 12, 12),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Speak Freely',
                        speed: const Duration(milliseconds: 150),
                        textStyle: GoogleFonts.ebGaramond(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TypewriterAnimatedText(
                        'Sign Clearly',
                        speed: const Duration(milliseconds: 150),
                        textStyle: GoogleFonts.ebGaramond(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TypewriterAnimatedText(
                        'Understand Fully!',
                        speed: const Duration(milliseconds: 150),
                        textStyle: GoogleFonts.ebGaramond(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 2, 2, 2),
                        ),
                      ),
                    ],
                    repeatForever: true,
                    pause: const Duration(milliseconds: 500),
                  ),
                ),
              ),
            ),
             const SizedBox(height: 20),
            
            SizedBox(
              width: 500, // Set the desired width
              height: 400, // Set the desired height
              child: Gif(
                image: const AssetImage("assets/image/animate.gif"), // Ensure the correct path
                controller: _controller,
                autostart: Autostart.loop,
                placeholder: (context) => const Text('Loading...'),
                onFetchCompleted: () {
                  _controller.reset();
                  _controller.forward();
                },
              ),
            ),
            const SizedBox(height: 0),
           ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Interpreterscreen()),
                );
              },
              child: const Text(
                "Get Started",
                style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 30, 29, 29)),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0XFFD185FF)),
                minimumSize: MaterialStateProperty.all(const Size(275, 60)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}