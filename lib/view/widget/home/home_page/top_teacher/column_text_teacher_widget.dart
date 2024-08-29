import 'package:flutter/material.dart';

import '../../../../../data/model/student/teacher_model.dart';

class ColumnTextTeacherWidget extends StatelessWidget {
  const ColumnTextTeacherWidget({
    super.key,
    required this.instructorList,
    required this.index,
  });

  final List<TeacherModel> instructorList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Text(
            instructorList[index].name!.substring(0, 1).toUpperCase() +
                instructorList[index].name!.substring(1),
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 5),
          Text(instructorList[index].carer!),
        ],
      ),
    );
  }
}
