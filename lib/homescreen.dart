import 'package:flutter/material.dart';

import 'loginpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  bool _validationUsername = false;
  bool _validationPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('simple Login form'),
      ),
      //
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  child: const Image(
                    height: 200,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://cdn.learnwoo.com/wp-content/uploads/2019/11/image1-5.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Welcome to Login form',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    hintText: 'UserName',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                    ),
                    //
                    errorText:
                        _validationUsername ? 'username cannot be null' : null,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //one more text field for password
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue,
                      ),
                    ),
                    //show error password
                    errorText:
                        _validationPassword ? 'password cannot be null' : null,
                  ),
                ),
              ),
              //Button Login
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _username.text.isEmpty
                                  ? _validationUsername = true
                                  : _validationUsername = false;
                              _password.text.isEmpty
                                  ? _validationPassword = true
                                  : _validationPassword = false;
                              if (_username.text == 'root' &&
                                  _password.text == '123') {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MyLogin();
                                  },
                                ));
                              }
                            });
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
