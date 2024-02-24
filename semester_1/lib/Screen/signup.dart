import 'dart:async';
import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:semester_1/Screen/verifyOtp.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  bool _isVisible = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animateSignupBox();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.forward();
  }

  void _animateSignupBox() {
    Timer(Duration(milliseconds: 500), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context); // Access the theme here
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
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
            child: Stack(
              children: [
                Positioned(
                  top: -200 + (200 * _animation.value),
                  left: MediaQuery.of(context).size.width / 3,
                  child: Transform.rotate(
                    angle: math.pi / 4,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -200 + (200 * _animation.value),
                  right: MediaQuery.of(context).size.width / 3,
                  child: Transform.rotate(
                    angle: math.pi / 4,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Card(
                          elevation: 4,
                          margin: EdgeInsets.all(20),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                AnimatedDefaultTextStyle(
                                  duration: Duration(seconds: 1),
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Pacifico',
                                    color: Colors.pink,
                                  ),
                                  child: Text("Sign Up"),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Username',
                                    hintText: 'Enter your username',
                                    prefixIcon: Icon(
                                      Icons.person,
color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter your email',
                                    prefixIcon: Icon(
                                      Icons.email,
color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextFormField(
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter your password',
                                    prefixIcon: Icon(
                                      Icons.lock,
color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  obscureText: true,
                                ),
                                SizedBox(height: 20),
                                ElevatedButton(
  onPressed: () {
    // Navigate to VerifyOtp screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerifyOtpScreen()),
    );
  },
  child: Text('Sign Up'),
),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignUpScreen(),
  ));
}
