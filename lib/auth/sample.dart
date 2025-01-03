import 'package:flutter/material.dart';
import 'package:sampling/Pages/edit_page.dart';
import 'package:sampling/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WrittenPage(),
    );
  }
}

class WrittenPage extends StatelessWidget {
  const WrittenPage({super.key});

  void _showDraggableSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.0)
        )
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
                color: grey,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20)
                )
              ),
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.all(16.0),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: const Column(
                          children: [
                            Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Column(
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0)
                          ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'name@gmail.com',
                      filled: true,
                      fillColor: Colors.white,
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
                      Expanded(child: Divider(color: white)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: black,),
                        ),
                      ),
                      Expanded(child: Divider(color: white)),
                    ],
                  ),
                  const SizedBox(
                    height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.alternate_email,
                        color: Colors.blue),
                        label: const Text('Login with X'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: white,
                          foregroundColor: Colors.black,
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook,
                        color: Colors.blue),
                        label: const Text('Login with Meta'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: white,
                          foregroundColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditPage(),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 600),
          child: GestureDetector(
            onTap: () => _showDraggableSheet(context),
            child: const Text(
              "Write_",
              style: TextStyle(
                fontSize: 40,
                color: white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
