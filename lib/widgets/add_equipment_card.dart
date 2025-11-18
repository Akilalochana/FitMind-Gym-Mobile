import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/colors.dart';

class AddEquipmentCard extends StatefulWidget {
  final String equipmentName;
  final String equipmentImageUrl;
  final String equipmentDescription;
  final String noOfMinutes;
  final String n0OfCalories;
  final bool isAddEquipment;
  final bool isFavEquipment;
  final void Function() toggleAddFavEquipment;
  final void Function() toggleAddEquipment;

  const AddEquipmentCard({
    super.key,
    required this.equipmentName,
    required this.equipmentImageUrl,
    required this.noOfMinutes,
    required this.n0OfCalories,
    required this.equipmentDescription,
    required this.toggleAddEquipment,
    required this.isAddEquipment,
    required this.isFavEquipment,
    required this.toggleAddFavEquipment,
  });

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 228, 228, 228),
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(2, 4), blurRadius: 6),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.equipmentName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  widget.equipmentImageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.equipmentDescription,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Time: ${widget.noOfMinutes.toString()} min and ${widget.n0OfCalories.toString()} calories",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
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
                        widget.toggleAddEquipment();
                      },
                      icon: Icon(
                        widget.isAddEquipment ? Icons.remove : Icons.add,
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
                        widget.toggleAddFavEquipment();
                      },
                      icon: Icon(
                        widget.isFavEquipment
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
