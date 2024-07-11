import 'package:flutter/material.dart';
import 'package:flutter_app_100/data/schedule_task_data.dart';
import 'package:flutter_app_100/widgets/custom_card.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleTaskData();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Scheduled",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        for (var index = 0; index < data.scheduled.length; index++)
          CustomCard(
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.scheduled[index].title,
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          data.scheduled[index].date,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.more)
                  ],
                )
              ],
            ),
          )
      ],
    );
  }
}
