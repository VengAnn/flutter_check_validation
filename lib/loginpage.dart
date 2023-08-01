import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.blue,
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              Container(
                child: Center(child: Text('Welcome to page')),
              ),
              const SizedBox(
                height: 20,
              ),
              //textbutton for back
              Container(
                width: 70,
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
