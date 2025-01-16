import 'package:flutter/material.dart';
import 'package:sampling/Pages/edit_page.dart';
import 'package:sampling/colors.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(
              color: blue,
            ),
            filled: true,
            fillColor: white,
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
            hintStyle: TextStyle(
              color: blue,
            ),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (
              context) => const EditPage()
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
          ),
          child: const Center(
            child: Text(
              'Sign In',
              style: TextStyle(color: white, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}