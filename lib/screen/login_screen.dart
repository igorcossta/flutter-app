import 'package:flutter/material.dart';
import 'package:nanito/util/CustomClipper.dart';
import 'package:nanito/util/SystemColors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              ClipPath(
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: SystemColors.primary,
                  ),
                ),
                clipper: CustomClipPath(),
              ),
              SizedBox(height: 30.0),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                cursorColor: Colors.grey,
                style: TextStyle(
                  color: Colors.grey,
                ),
                decoration: InputDecoration(
                  labelText: 'Enter your username',
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.mail, color: SystemColors.primary),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: SystemColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: SystemColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              TextFormField(
                cursorColor: Colors.grey,
                style: TextStyle(
                  color: Colors.grey,
                ),
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.mail, color: SystemColors.primary),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: SystemColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: SystemColors.primary, width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/');
                  }
                },
                child: Text('Enter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
