import 'package:flutter_movie_app/models/equipment_model.dart';
import 'package:flutter_movie_app/models/exercise_model.dart';
import 'package:flutter_movie_app/models/user_model.dart';

User user = User(
  userId: "123456",
  fillName: "jhone wick",
  gender: "male",
  address: "123 Main St",
  age: 30,
  description: "Fitness enthusiast",
  exerciseList: [
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
  ],
  equipmentList: [
    Equipment(
      id: 1,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of adjustable dumbbells for strength training.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: "30 mins",
      n0OfCalories: "200 kcal",
      handOverd: false,
    ),
    Equipment(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription:
          "A comfortable yoga mat for stretching and yoga exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbells.png",
      noOfMinutes: "20 mins",
      n0OfCalories: "100 kcal",
      handOverd: false,
    ),
  ],
  favExerciseList: [
    Exercise(
      id: 1,
      exerciseName: "Morning Stretching",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinutes: "15 mins",
      completed: false,
    ),
  ],
  favEquipmentList: [
    Equipment(
      id: 1,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of adjustable dumbbells for strength training.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: "30 mins",
      n0OfCalories: "200 kcal",
      handOverd: false,
    ),
  ],
);
