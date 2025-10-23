import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/colors.dart';
import 'package:flutter_movie_app/constants/responsive.dart';
import 'package:flutter_movie_app/data/user_data.dart';
import 'package:flutter_movie_app/widgets/exercise_card.dart';
import 'package:flutter_movie_app/widgets/progress_card.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //create date time
  final DateFormat formatter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  //user data
  final userData = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String day = dayFormat.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $day",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: kSubtitleColor,
                  ),
                ),

                Text(
                  userData.fillName,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 20),
                ProgressCard(progressValue: 0.5, total: 100),

                const SizedBox(height: 20),

                Text(
                  "Today's Workout Plans",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 10),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      title: "warmup",
                      imageUrl: "assets/images/exercises/dragging.png",
                      description: "see more ..",
                    ),
                    ExerciseCard(
                      title: "equipment",
                      imageUrl: "assets/images/equipments/dumbbell.png",
                      description: "see more ..",
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      title: "warmup",
                      imageUrl: "assets/images/exercises/dragging.png",
                      description: "see more ..",
                    ),
                    ExerciseCard(
                      title: "equipment",
                      imageUrl: "assets/images/equipments/dumbbell.png",
                      description: "see more ..",
                    ),
                  ],
                ),

                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
