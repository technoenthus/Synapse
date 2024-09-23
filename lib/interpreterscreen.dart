import 'package:flutter/material.dart';

class Interpreterscreen extends StatefulWidget {
  const Interpreterscreen({super.key});

  @override
  State<Interpreterscreen> createState() => _InterpreterscreenState();
}

class _InterpreterscreenState extends State<Interpreterscreen> {
  bool isTextSelected = true;
  String selectedText = "Hello!"; // Placeholder for selected text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  automaticallyImplyLeading: false, // This removes the back arrow
  backgroundColor: Colors.yellow,
  centerTitle: true,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Icon(Icons.camera_alt, color: Colors.black),
      SizedBox(width: 8),
      Text(
        "Camera",
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    ],
  ),
),
      body: Column(
        children: [
          // Camera container placeholder
          Container(
            height: MediaQuery.of(context).size.height * 0.48,
            width: double.infinity,
            color: Colors.black12,
            child: const Center(
              child: Text(
                'Live Camera Feed',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          const SizedBox(height: 6),

          // Text "Translate to" above buttons
          const Text(
            "Translate to",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 5),

          // Row for buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text Button
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isTextSelected = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isTextSelected ? Color.fromARGB(255, 224, 145, 248) : const Color.fromARGB(255, 247, 244, 244),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  minimumSize: const Size(150, 50),
                ),
                icon: const Icon(Icons.text_fields),
                label: const Text("Text", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(width: 10),

              // Audio Button
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isTextSelected = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: !isTextSelected ? const Color.fromARGB(255, 115, 185, 242) : Color.fromARGB(255, 245, 241, 241),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  minimumSize: const Size(150, 50),
                ),
                icon: const Icon(Icons.mic),
                label: const Text("Audio", style: TextStyle(fontSize: 16)),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // Container for selected text or audio icon
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              color: Colors.white,
              child: isTextSelected
                  ? Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("The person is saying: ", style: TextStyle(fontSize: 18)),
                          const SizedBox(height: 8),
                          Text(selectedText, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  : Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 2,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(24.0),
                        child: const Icon(Icons.play_arrow, size: 64, color: Colors.blue),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}