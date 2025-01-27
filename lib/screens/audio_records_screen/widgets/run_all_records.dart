import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class RunAllRecords extends StatefulWidget {
  const RunAllRecords({super.key});

  @override
  State<RunAllRecords> createState() => _RunAllRecordsState();
}

class _RunAllRecordsState extends State<RunAllRecords> {
  bool repeatAll = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 46,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
              borderRadius: BorderRadius.circular(41),
              //onTap color Color(0xFFAAB6E2)
              color: repeatAll
                  ? const Color(0xFFAAB6E2)
                  : const Color(0xFF788CCD)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: SvgPicture.asset(
                  'assets/icons/Repeat.svg',
                ),
              )
            ],
          ),
        ),
        Container(
          width: 155,
          height: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(41), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 1.0, top: 3.0, bottom: 3.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      repeatAll = !repeatAll;
                      print(repeatAll);
                    });
                  },
                  child: SvgPicture.asset(
                    repeatAll
                        ? 'assets/icons/Pause.svg'
                        : 'assets/icons/Play.svg',
                    colorFilter: const ColorFilter.mode(
                        AppColors.purpleColor, BlendMode.srcIn),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  repeatAll ? "Остановить" : 'Запустить все',
                  style: const TextStyle(
                    color: AppColors.purpleColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'TTNorms',
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
