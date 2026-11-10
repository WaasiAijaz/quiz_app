import 'package:flutter/material.dart';
class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return Column(
      children: summaryData.map((data) {
        // Check if the user's answer is correct
        final isCorrect =
            data['user_answer'] == data['correct_answer'];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Larger colored question number
              Container(
                width: 35,
                height: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isCorrect
                      ? Colors.lightBlueAccent
                      : Colors.pinkAccent,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 45, 0, 90),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data['user_answer'] as String,
                      style: const TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: const TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
