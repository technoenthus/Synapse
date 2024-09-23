import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Learningmodescreen extends StatefulWidget {
  const Learningmodescreen({super.key});

  @override
  State<Learningmodescreen> createState() => _LearningmodescreenState();
}

class _LearningmodescreenState extends State<Learningmodescreen> {
  double progress1 = 0.5; // Progress for the first line (50%)
  double progress2 = 0.3; // Progress for the second line (30%)
  double progress3 = 0.7; // Progress for the third line (70%)
  double progress4 = 0.2; // Progress for the fourth line (20%)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text("Learning Mode"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Light green rectangle with text
          Container(
            width: double.infinity,
            color: Colors.lightGreen,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Let's learn ISL together",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(height: 16), // Spacing between the rectangle and the heading

          // Heading "Unit 1"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Unit 1",
              style: GoogleFonts.ebGaramond(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // First Row with Circular Button and Progress Line
          Row(
            children: [
              const SizedBox(width: 16),
              // Circular button "1"
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const SizedBox(
                  width: 60,
                  height: 60,
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Alphabet A"),
                  SizedBox(
                    width: 200, // Adjust width as needed
                    child: LinearProgressIndicator(
                      value: progress1,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Second Row with Circular Button and Progress Line
          Row(
            children: [
              const SizedBox(width: 16),
              // Circular button "2"
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const SizedBox(
                  width: 60,
                  height: 60,
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Alphabet B"),
                  SizedBox(
                    width: 200, // Adjust width as needed
                    child: LinearProgressIndicator(
                      value: progress2,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Third Row with Circular Button and Progress Line
          Row(
            children: [
              const SizedBox(width: 16),
              // Circular button "3"
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const SizedBox(
                  width: 60,
                  height: 60,
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Alphabet C"),
                  SizedBox(
                    width: 200, // Adjust width as needed
                    child: LinearProgressIndicator(
                      value: progress3,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Fourth Row with Circular Button and Progress Line
          Row(
            children: [
              const SizedBox(width: 16),
              // Circular button "4"
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const SizedBox(
                  width: 60,
                  height: 60,
                  child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Alphabet D"),
                  SizedBox(
                    width: 200, // Adjust width as needed
                    child: LinearProgressIndicator(
                      value: progress4,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Placeholder for additional content
          
        ],
      ),
    );
  }
}
