import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/colors.dart';
import 'package:flutter_movie_app/constants/responsive.dart';

class AddExerciseCard extends StatefulWidget {
  final String exerciseTitle;
  final String exersiseImageUrl;
  final String noOfMinutes;
  final bool isAdded;
  final bool isFavorite;
  final void Function() toggleAddExercise;
  final void Function() toggleAddFavoriteExercise;

  const AddExerciseCard({
    super.key,
    required this.exerciseTitle,
    required this.noOfMinutes,
    required this.exersiseImageUrl,
    required this.toggleAddExercise,
    required this.isAdded,
    required this.toggleAddFavoriteExercise,
    required this.isFavorite,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 228, 228, 228),
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(2, 4), blurRadius: 6),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(kDefaultpadding),
        child: Column(
          children: [
            Text(
              widget.exerciseTitle,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5),

            Image.asset(widget.exersiseImageUrl, width: 100, fit: BoxFit.cover),

            SizedBox(height: 5),

            Text(
              "${widget.noOfMinutes.toString()} Minutes",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),

            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 189, 189, 189),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        widget.toggleAddExercise();
                      },
                      icon: Icon(
                        widget.isAdded ? Icons.remove : Icons.add,
                        color: kMainDarkBlueColor,
                        size: 35,
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 189, 189, 189),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        widget.toggleAddFavoriteExercise();
                      },
                      icon: Icon(
                        widget.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: const Color.fromARGB(255, 241, 26, 26),
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
