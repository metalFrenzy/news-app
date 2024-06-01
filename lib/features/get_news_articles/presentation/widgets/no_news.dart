import 'package:flutter/material.dart';

class NoNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/astro.png'),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          ' no News!',
          style: TextStyle(
            color: Color.fromARGB(255, 43, 42, 43),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
      ],
    );
  }
}
