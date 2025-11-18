import 'package:flutter_movie_app/models/equipment_model.dart';
import 'package:flutter_movie_app/models/exercise_model.dart';

class User {
  final String userId;
  final String fillName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalExercisesCompleted = 0;
  int totalEquipmentHandOvered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  User({
    required this.userId,
    required this.fillName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description,
    required this.exerciseList,
    required this.equipmentList,
    required this.favExerciseList,
    required this.favEquipmentList,
  });

  //metodes

  //metod to add new exercise to exercise list
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  // metode to remove exercise from exercise list
  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  //metod to add new fav exercise to the fav exercise list
  void addFavExercise(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  // metode to remove fav exercise from fav exercise list
  void removeFavExercise(Exercise exercise) {
    favExerciseList.remove(exercise);
  }

  //equipment methods
  // add equipment to equipment list
  void addEquipment(Equipment equipment) {
    equipmentList.add(equipment);
  }

  //remove equipment from equipment list
  void removeEquipment(Equipment equipment) {
    equipmentList.remove(equipment);
  }

  //favorite equipment methods
  // add equipment to fav equipment list
  void addFavEquipment(Equipment equipment) {
    favEquipmentList.add(equipment);
  }

  //remove equipment from fav equipment list
  void removeFavEquipment(Equipment equipment) {
    favEquipmentList.remove(equipment);
  }
}
