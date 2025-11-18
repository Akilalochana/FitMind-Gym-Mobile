import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/colors.dart';
import 'package:flutter_movie_app/constants/responsive.dart';
import 'package:flutter_movie_app/models/equipment_model.dart';
import 'package:flutter_movie_app/widgets/equipment_card.dart';
import 'package:intl/intl.dart';

class EquipmentDetailsPage extends StatefulWidget {
  final String equipmentTitle;
  final String equipmentDescription;
  final List<Equipment> equipmentList;

  const EquipmentDetailsPage({
    super.key,
    required this.equipmentTitle,
    required this.equipmentDescription,
    required this.equipmentList,
  });

  @override
  State<EquipmentDetailsPage> createState() => _EquipmentDetailsPageState();
}

class _EquipmentDetailsPageState extends State<EquipmentDetailsPage> {
  //create date time
  final DateFormat formatter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String day = dayFormat.format(now);
    return Scaffold(
      appBar: AppBar(
        title: Column(
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
              widget.equipmentTitle,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: kMainBlackColor,
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultpadding),
          child: Column(
            children: [
              Text(
                widget.equipmentDescription,
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 88, 88, 88),
                ),
              ),

              const SizedBox(height: kDefaultpadding),

              //equipment list
              widget.equipmentList.isNotEmpty
                  ? ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.equipmentList.length,
                    itemBuilder: (context, index) {
                      if (index >= widget.equipmentList.length) {
                        return const SizedBox.shrink();
                      }
                      Equipment equipment = widget.equipmentList[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: kDefaultpadding),
                        child: EquipmentCard(
                          equipmentName: equipment.equipmentName,
                          equipmentDescription: equipment.equipmentDescription,
                          equipmentImageUrl: equipment.equipmentImageUrl,
                          noOfMinutes: equipment.noOfMinutes,
                          n0OfCalories: equipment.n0OfCalories,
                        ),
                      );
                    },
                  )
                  : const Center(
                    child: Text(
                      'No equipment available',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
