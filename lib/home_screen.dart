import '../answer.dart';
import '../my_provider.dart';
import '../question.dart';
import '../restart_app.dart';
import '../start.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
            title:const Text( 'quiz_app',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            )
      ),
      body: SafeArea(
        child: Consumer<MyProvider>(
          builder: (ctx, provider, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/images/WhatsApp Image 2022-11-11 at 9.49.24 PM.jpeg',
                  height: 120,
                  width: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                if (provider.index == -1) const StartQuiz(),
                if (provider.index >= 0 &&
                    provider.index < provider.questions.length)
                  const Question(),
                if (provider.index >= 0 &&
                    provider.index < provider.questions.length)
                  const Answers(),
                if (provider.index == provider.questions.length) const Result(),
              ],
            );
          },
        ),
      ),
    );
  }
}
