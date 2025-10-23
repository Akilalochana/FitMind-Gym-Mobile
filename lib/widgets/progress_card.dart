import 'package:flutter/material.dart';
import 'package:flutter_movie_app/constants/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;

  const ProgressCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt();

    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kMainColor, kMainDarkBlueColor],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "welcome ! \nyour health guide",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: kMainWhiteColor,
              ),
            ),
            const SizedBox(height: 20),
            //progress bar
            LinearProgressIndicator(
              value: widget.progressValue,
              backgroundColor: kMainDarkBlueColor,
              valueColor: AlwaysStoppedAnimation(kMainWhiteColor),
              minHeight: 15,
              borderRadius: BorderRadius.circular(100),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTag("done", done.toString()),
                _buildTag("total", widget.total.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: kMainWhiteColor,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: kMainWhiteColor,
          ),
        ),
      ],
    );
  }
}
