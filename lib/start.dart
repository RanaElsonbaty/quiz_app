import '../my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<MyProvider>(context,listen: false).changeIndex();
      },
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          padding: const EdgeInsets.symmetric(vertical: 12),
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.pink,
          ),
          child: const Text(
            'Start',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}