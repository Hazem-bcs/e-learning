import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/search/search_controller.dart';
import '../../../../../core/constent/images.dart';
import '../../../../../core/function/validator.dart';
import '../../../../../core/ui_components/info_widget.dart';
import '../../../auth/custom_text_field.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
    this.isHomePage = false,
  });

  // isHomePage just to not work In Home page and Work in SearchPage
  final bool? isHomePage;

  @override
  Widget build(BuildContext context) {
    final SearchControllerImp controllerImp = Get.find();
    return InfoWidget(
      builder: (context, deviceInfo) => Form(
        key: isHomePage! ? null : controllerImp.formKey,
        child: CustomTextField(
          controller: controllerImp.searchEditingController,
          onFieldSubmitted: (p0) => controllerImp.searchIcon(),
          focusNode: controllerImp.focusNode,
          width: deviceInfo.screenWidth * 0.75,
          height: 60,
          labelText: 'search here',
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: .0),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
                controllerImp.searchIcon();
              },
              child: Image.asset(
                ImageRoutes.searchIcon,
                color: Colors.grey,
              ),
            ),
          ),
          validator: (val) {
            return validator(val: val!, min: 4, max: 50, type: "search");
          },
        ),
      ),
    );
  }
}
