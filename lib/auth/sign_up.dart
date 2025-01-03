import 'package:flutter/material.dart';
import 'package:sampling/colors.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'Name',
            filled: true,
            fillColor:white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Email',
            filled: true,
            fillColor:white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password',
            filled: true,
            fillColor: white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        const Row(
          children: [
            Expanded(child: Divider(
              color: black,
              )
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Text(
              'OR',
              style: TextStyle(
                color: black
                ),
              ),
            ),
            Expanded(child: Divider(
              color: black,
              )
            )
          ],
        ),
        const SizedBox(
          height: 16.0
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.alternate_email,
              color: blue),
              label: const Text('Login with X'),
              style: ElevatedButton.styleFrom(
                backgroundColor: white,
                foregroundColor: black,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.facebook,
              color:blue),
              label: const Text('Login with Meta'),
              style: ElevatedButton.styleFrom(
                backgroundColor: white,
                foregroundColor:black,
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: black,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
          ),
          child: const Center(
            child: Text(
              'Sign Up',
              style: TextStyle(color:white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}