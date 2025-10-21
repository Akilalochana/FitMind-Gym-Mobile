import 'package:flutter_movie_app/models/exercise_model.dart';

class ExerciseData {
  final List<Exercise> exerciseList = [
    Exercise(
      id: 1,
      exerciseName: "Morning Stretching",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinutes: "15 mins",
      completed: false,
    ),
    Exercise(
      id: 2,
      exerciseName: "Cardio Blast",
      exerciseImageUrl: "assets/images/exercises/cobra.png",
      noOfMinutes: "30 mins",
      completed: false,
    ),
    Exercise(
      id: 3,
      exerciseName: "Strength Training",
      exerciseImageUrl: "assets/images/exercises/dragging.png",
      noOfMinutes: "45 mins",
      completed: false,
    ),
    Exercise(
      id: 4,
      exerciseName: "Yoga Flow",
      exerciseImageUrl: "assets/images/exercises/hunch_back.png",
      noOfMinutes: "60 mins",
      completed: false,
    ),

    Exercise(
      id: 5,
      exerciseName: "Treadmill Run",
      exerciseImageUrl: "assets/images/exercises/treadmill-machine_men.png",
      noOfMinutes: "20 mins",
      completed: false,
    ),

    Exercise(
      id: 6,
      exerciseName: "Evening Walk",
      exerciseImageUrl: "assets/images/exercises/treadmill-machine_women.png",
      noOfMinutes: "25 mins",
      completed: false,
    ),

    Exercise(
      id: 7,
      exerciseName: "Triangle Pose",
      exerciseImageUrl: "assets/images/exercises/triangle.png",
      noOfMinutes: "15 mins",
      completed: false,
    ),

    Exercise(
      id: 8,
      exerciseName: "Weight Lifting",
      exerciseImageUrl: "assets/images/exercises/weightlifting.png",
      noOfMinutes: "40 mins",
      completed: false,
    ),

    Exercise(
      id: 9,
      exerciseName: "Yoga Session",
      exerciseImageUrl: "assets/images/exercises/yoga.png",
      noOfMinutes: "50 mins",
      completed: false,
    ),
  ];
}
