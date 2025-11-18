import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/colors.dart';
import 'package:flutter_movie_app/constants/responsive.dart';
import 'package:flutter_movie_app/data/user_data.dart';
import 'package:flutter_movie_app/models/exercise_model.dart';
import 'package:flutter_movie_app/models/equipment_model.dart';
import 'package:intl/intl.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
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
                  "Hello, ${userData.fillName}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 10),

                Text(
                  "let's see your favourite exercises and equipments!",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 10, 98, 104),
                  ),
                ),

                const SizedBox(height: 15),

                // Favourite Exercises Section
                if (userData.favExerciseList.isNotEmpty) ...[
                  Text(
                    "Favourite Exercises",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kMainBlackColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: userData.favExerciseList.length,
                    itemBuilder: (context, index) {
                      if (index >= userData.favExerciseList.length) {
                        return const SizedBox.shrink();
                      }
                      Exercise favExercise = userData.favExerciseList[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              favExercise.exerciseImageUrl,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(Icons.fitness_center),
                                );
                              },
                            ),
                          ),
                          title: Text(
                            favExercise.exerciseName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            favExercise.noOfMinutes,
                            style: TextStyle(
                              color: kSubpinkColor,
                              fontSize: 14,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                userData.removeFavExercise(favExercise);
                              });
                            },
                            icon: const Icon(Icons.favorite, color: Colors.red),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                ],

                // Favourite Equipment Section
                if (userData.favEquipmentList.isNotEmpty) ...[
                  Text(
                    "Favourite Equipment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kMainBlackColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: userData.favEquipmentList.length,
                    itemBuilder: (context, index) {
                      if (index >= userData.favEquipmentList.length) {
                        return const SizedBox.shrink();
                      }
                      Equipment favEquipment = userData.favEquipmentList[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              favEquipment.equipmentImageUrl,
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(Icons.fitness_center),
                                );
                              },
                            ),
                          ),
                          title: Text(
                            favEquipment.equipmentName,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${favEquipment.noOfMinutes} • ${favEquipment.n0OfCalories}",
                                style: TextStyle(
                                  color: kSubpinkColor,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                favEquipment.equipmentDescription,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                userData.removeFavEquipment(favEquipment);
                              });
                            },
                            icon: const Icon(Icons.favorite, color: Colors.red),
                          ),
                          isThreeLine: true,
                        ),
                      );
                    },
                  ),
                ],

                // Empty State
                if (userData.favExerciseList.isEmpty &&
                    userData.favEquipmentList.isEmpty) ...[
                  const SizedBox(height: 50),
                  Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 64,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "No favourites yet!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Start adding exercises and equipment to your favourites",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[500],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
