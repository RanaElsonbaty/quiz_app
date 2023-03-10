import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

class Answers extends StatelessWidget {
  const Answers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (ctx, provider, _) {
        return Column(
          children: [
            for (int i = 0; i < provider.answers[provider.index].length; i++)
              GestureDetector(
                onTap: () {
                  provider.changeScore(
                      score: provider.answers[provider.index][i]['score']);
                  provider.changeIndex();
                },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    margin: const EdgeInsets.symmetric(
                     horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink,
                    ),
                    child: Text(
                      '${provider.answers[provider.index][i]['answer']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
          ],
        );
      },
    );
  }
}