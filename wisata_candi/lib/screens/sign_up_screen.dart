import 'package:matcher/expect.dart';

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {
  //TODO: 1. Deklarasikan Variabel
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText ='';

  bool _isSignIn = false;

  bool _obscurePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2. Pasang Appbar
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      //TODO: 3. PAsang Body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                //TODO 4. Atur mainAxisAlighment dan crossAxisAlighment
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //TODO 9. Pasang TextFormField nama
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: "Nama",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //TODO 6. Pasang TextFormField Kata Sandi
                  const SizedBox(height: 20,),
                  //TODO 5. Pasang TextFormField nama pengguna
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: "Nama Pengguna",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //TODO 6. Pasang TextFormField Kata Sandi
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: "Kata Sandi",
                      errorText: _errorText.isEmpty ? _errorText : null,
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        }, 
                        icon: Icon(_obscurePassword 
                            ? Icons.visibility_off 
                            : Icons.visibility),
                        ),
                      ),
                      obscureText: _obscurePassword,
                    ),
                  //TODO 7. Pasang ElevatedButton Sign in
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {}, 
                    child: const Text('Sign Up'),
                  ),
                  //TODO 8. Pasang ElevatedButton Sign up
                  const SizedBox(height: 20,),
                  // TextButton(
                  //   onPressed: () {}, 
                  //   child: const Text('Belum punya akun? Daftar disini.'),
                  // ),
                  RichText(text: TextSpan(
                    text: 'Sudah punya akun?',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children:  <TextSpan> [
                      TextSpan(
                        text: 'Masuk di sini.',
                        style: const TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {},
                      ),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}