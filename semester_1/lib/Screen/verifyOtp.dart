import 'package:flutter/material.dart';
import 'Login.dart'; // Import the Login.dart file or replace it with the actual file name if different

class VerifyOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set app bar color to transparent
        elevation: 0, // Remove app bar shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back when back button is pressed
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFe5d5f0),
              Color(0xFFFFFFFF),
              Color(0xFFb8c8f1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             FadeInImage(
  placeholder: AssetImage('assets/loading.gif'), // Placeholder image
  image: AssetImage(
    '/images/verificallsmain.gif', // Asset path for the OTP GIF
  ),
  width: 200,
  height: 200,
),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOtpTextField(),
                  SizedBox(width: 10),
                  buildOtpTextField(),
                  SizedBox(width: 10),
                  buildOtpTextField(),
                  SizedBox(width: 10),
                  buildOtpTextField(),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Didn't receive code?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Show green tick animation
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: Container(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 100,
                          ),
                        ),
                      ),
                    ),
                  );
                  // Navigate to login screen after a delay
                  Future.delayed(Duration(seconds: 2), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  });
                },
                child: Text('Verify'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOtpTextField() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
