import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class ListenRecordScreen extends StatefulWidget {
  const ListenRecordScreen({super.key});

  @override
  State<ListenRecordScreen> createState() => _ListenRecordScreenState();
}

class _ListenRecordScreenState extends State<ListenRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF6F6F6),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            left: 30.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/Share.svg'),
                        const SizedBox(
                          width: 30.0,
                        ),
                        SvgPicture.asset('assets/icons/SaveAs.svg'),
                        const SizedBox(
                          width: 30.0,
                        ),
                        SvgPicture.asset('assets/icons/DeleteRecord.svg')
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text('Сохранить'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 48.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 30.0, top: 50),
                      child: Text(
                        'Аудиозапись 1',
                        style: AppTextStyles.body,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/Minus15.svg'),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 25.0),
                              child: SvgPicture.asset(
                                'assets/icons/Play.svg',
                                height: 80.0,
                                width: 80.0,
                                colorFilter: const ColorFilter.mode(
                                    AppColors.orangeColor, BlendMode.srcIn),
                              ),
                            ),
                          ),
                          SvgPicture.asset('assets/icons/Add15.svg'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ))
    ]);
  }
}
