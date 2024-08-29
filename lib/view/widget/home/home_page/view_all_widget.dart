import 'package:flutter/material.dart';

import '../../../../controller/home/home_page_controller.dart';
import '../../../../core/enums/view_all_type.dart';

class TextViewAllWidget extends StatelessWidget {
  const TextViewAllWidget(
      {super.key, required this.viewAllType, required this.text});

  final ViewAllType viewAllType;
  final String text;

  @override
  Widget build(BuildContext context) {
    final HomePageControllerImp controllerImp = HomePageControllerImp();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        TextButton(
          onPressed: () => controllerImp.viewAll(viewAllType),
          child: Text(
            'View All',
            style:
                Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15),
          ),
        )
      ],
    );
  }
}
