import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/function/get_image_from_drive.dart';
import '../../../../../core/ui_components/info_widget.dart';
import '../../../../../data/model/student/teacher_model.dart';

class ShapeBehindTeacherWidget extends StatelessWidget {
  const ShapeBehindTeacherWidget({
    super.key,
    required this.instructorList,
    required this.index,
  });

  final List<TeacherModel> instructorList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) => SizedBox(
        width: deviceInfo.screenWidth * 0.35,
        height: 175,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                width: deviceInfo.screenWidth * 0.35,
                height: 150,
                decoration: BoxDecoration(
                    color: instructorList[index].color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(instructorList[index].topLeft!),
                      topRight:
                          Radius.circular(instructorList[index].topRight!),
                      bottomLeft:
                          Radius.circular(instructorList[index].bottomLeft!),
                      bottomRight:
                          Radius.circular(instructorList[index].bottomRight!),
                    )),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: -2,
              child: CachedNetworkImage(
                  imageUrl: getImageFromDrive(instructorList[index].image!)),
            )
          ],
        ),
      ),
    );
  }
}
