import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/colors.dart';
import 'package:flutter_movie_app/constants/responsive.dart';
import 'package:flutter_movie_app/data/equipment_data.dart';
import 'package:flutter_movie_app/data/ezercise_data.dart';
import 'package:flutter_movie_app/data/user_data.dart';
import 'package:flutter_movie_app/models/equipment_model.dart';
import 'package:flutter_movie_app/models/exercise_model.dart';
import 'package:flutter_movie_app/widgets/add_equipment_card.dart';
import 'package:flutter_movie_app/widgets/add_exercise_card.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  //import the user from user model
  final userData = user;

  final exerciseList = ExerciseData().exerciseList;

  final equipmentlist = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${userData.fillName}",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "let's add a new exercise or equipment to your routine!",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 10, 98, 104),
                  ),
                ),
                const SizedBox(height: 15),

                Text(
                  "All Exercises",
                  style: TextStyle(
                    fontSize: 20,
                    color: kMainBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                //list view horizontal of add exercise card
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exerciseList.length,
                    itemBuilder: (context, index) {
                      Exercise exercise = exerciseList[index];
                      return AddExerciseCard(
                        exerciseTitle: exercise.exerciseName,
                        noOfMinutes: exercise.noOfMinutes,
                        exersiseImageUrl: exercise.exerciseImageUrl,
                        isAdded: userData.exerciseList.contains(exercise),
                        toggleAddExercise: () {
                          setState(() {
                            if (userData.exerciseList.contains(exercise)) {
                              userData.removeExercise(exercise);
                              print(userData.exerciseList.length);
                            } else {
                              userData.addExercise(exercise);
                              print(userData.exerciseList.length);
                            }
                          });
                        },
                        isFavorite: userData.favExerciseList.contains(exercise),
                        toggleAddFavoriteExercise: () {
                          setState(() {
                            if (userData.favExerciseList.contains(exercise)) {
                              userData.removeFavExercise(exercise);
                              print(userData.favExerciseList.length);
                            } else {
                              userData.addFavExercise(exercise);
                              print(userData.favExerciseList.length);
                            }
                          });
                        },
                      );
                    },
                  ),
                ),

                const SizedBox(height: 15),

                Text(
                  "All Equipment",
                  style: TextStyle(
                    fontSize: 20,
                    color: kMainBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),

                //list view horizontal of add equipment card
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: ListView.builder(
                    itemCount: equipmentlist.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      Equipment equipment = equipmentlist[index];
                      return AddEquipmentCard(
                        equipmentName: equipment.equipmentName,
                        equipmentImageUrl: equipment.equipmentImageUrl,
                        noOfMinutes: equipment.noOfMinutes,
                        n0OfCalories: equipment.n0OfCalories,
                        equipmentDescription: equipment.equipmentDescription,

                        isAddEquipment: userData.equipmentList.contains(
                          equipment,
                        ),
                        toggleAddEquipment: () {
                          setState(() {
                            if (userData.equipmentList.contains(equipment)) {
                              userData.removeEquipment(equipment);
                              print(userData.equipmentList.length);
                            } else {
                              userData.addEquipment(equipment);
                              print(userData.equipmentList.length);
                            }
                          });
                        },

                        isFavEquipment: userData.favEquipmentList.contains(
                          equipment,
                        ),
                        toggleAddFavEquipment: () {
                          setState(() {
                            if (userData.favEquipmentList.contains(equipment)) {
                              userData.removeFavEquipment(equipment);
                              print(userData.favEquipmentList.length);
                            } else {
                              userData.addFavEquipment(equipment);
                              print(userData.favEquipmentList.length);
                            }
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
