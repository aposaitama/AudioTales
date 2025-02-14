import 'package:flutter/material.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class EmptyDeletedAudiosList extends StatelessWidget {
  const EmptyDeletedAudiosList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Недавно\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              letterSpacing: 3,
              height: 1.0,
              fontFamily: 'TTNorms',
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'удаленные',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3,
                  fontFamily: 'TTNorms',
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: AppColors.blueColor,
      ),
      body: const Column(
        children: [
          Stack(
            children: [
              CustomProfileTopClipPath(
                backgroundColor: AppColors.blueColor,
                minusHeigth: 70,
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  textAlign: TextAlign.center,
                  'Немає видалених аудіозаписів',
                  style: AppTextStyles.body,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
