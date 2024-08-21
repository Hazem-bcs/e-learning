import 'package:cached_network_image/cached_network_image.dart';
import 'package:elearnnig/controller/home/colleague_controller.dart';
import 'package:elearnnig/core/function/get_image_from_drive.dart';
import 'package:elearnnig/data/model/home/colleague_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColleagueCardWidget extends StatelessWidget {
  const ColleagueCardWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    ColleagueControllerImp controllerImp = Get.find();
    final List<ColleagueModel> myList = controllerImp.listColleagueModel;
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () => controllerImp.goToHomeScreen(myList[index].colleagueId),
          child: Listener(
            onPointerHover: (PointerHoverEvent details) {
              controllerImp.opacityForText[index].value = false;
            },
            onPointerUp: (pointerUpEvent) {
              Future.delayed(const Duration(milliseconds: 200), () {
                controllerImp.opacityForText[index].value = true;
              });
            },
            child: Obx(
              () => AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                transform: controllerImp.opacityForText[index].value
                    ? (Matrix4.identity()..setEntry(3, 2, 0.001))
                    : (Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..scale(1.1, 1.1)
                      ..rotateX(0.0)
                      ..rotateY(0.0)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        getImageFromDrive(
                          myList[index].image!,
                        ),
                      ),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ]),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              getImageFromDrive(myList[index].image!),
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.3),
                    ),
                    Center(
                      child: Obx(
                        () => AnimatedOpacity(
                          opacity: controllerImp.opacityForText[index].value
                              ? 1.0
                              : 0.0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          child: Text(
                            myList[index].colleagueName,
                            style: const TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                fontSize: 35),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
