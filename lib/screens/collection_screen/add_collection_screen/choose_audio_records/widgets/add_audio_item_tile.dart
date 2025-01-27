import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class AddAudioItemTile extends StatefulWidget {
  final String title;
  final String duration;

  const AddAudioItemTile(
      {super.key, required this.title, required this.duration});

  @override
  State<AddAudioItemTile> createState() => _AddAudioItemTileState();
}

class _AddAudioItemTileState extends State<AddAudioItemTile> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41),
            border: Border.all(
                width: 1.0, color: AppColors.fontColor.withOpacity(0.2))),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/Play.svg',
                    colorFilter: const ColorFilter.mode(
                        AppColors.greenColor, BlendMode.srcIn),
                  ),
                  const SizedBox(
                    width: 23.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                          color: AppColors.fontColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          height: 1.0,
                          fontFamily: 'TTNorms',
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        widget.duration,
                        style: TextStyle(
                          color: AppColors.fontColor.withOpacity(0.5),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          height: 1.0,
                          letterSpacing: 1,
                          fontFamily: 'TTNorms',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: GestureDetector(
                  onTap: () => setState(() {
                    isSelected = !isSelected;
                  }),
                  child: Container(
                    height: 48.0,
                    width: 48.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.circular(41),
                    ),
                    child: Center(
                      child: isSelected
                          ? SvgPicture.asset('assets/icons/Check_Box_Done.svg')
                          : const SizedBox(),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
