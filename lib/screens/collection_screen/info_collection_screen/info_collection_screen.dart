import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';

import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/widgets/add_audio_item_tile.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class InfoCollectionScreen extends StatefulWidget {
  const InfoCollectionScreen({super.key});

  @override
  State<InfoCollectionScreen> createState() => _InfoCollectionScreenState();
}

class _InfoCollectionScreenState extends State<InfoCollectionScreen> {
  String popUpMode = '';
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: AppColors.greenColor,
        leadingWidth: 75.0,
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  iconSize: 36.0,
                  icon: SvgPicture.asset(
                    'assets/icons/Arrow_Left_Circle.svg',
                    height: 36.0,
                    width: 36.0,
                  ),
                  onPressed: () => context.pop(),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: PopupMenuButton<String>(
              icon: SvgPicture.asset(
                'assets/icons/Dots.svg',
              ),
              offset: const Offset(-10, 45),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              onSelected: (value) {
                if (value == 'edit') {
                  setState(() {
                    popUpMode = 'edit';
                  });
                } else if (value == 'delete') {
                  print('Удалить');
                } else if (value == 'choose') {
                  context.go('/collection/info/choose');
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'edit',
                  child: Text('Редактировать'),
                ),
                const PopupMenuItem(
                  value: 'choose',
                  child: Text('Выбрать несколько'),
                ),
                const PopupMenuItem(
                  value: 'delete',
                  child: Text('Удалить подборку'),
                ),
                const PopupMenuItem(
                  value: 'share',
                  child: Text('Поделиться'),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const CustomProfileTopClipPath(
                  backgroundColor: AppColors.greenColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Сказка о малыше Кокки',
                        style: AppTextStyles.whiteBodyBold,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 240.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: const Offset(0, 10),
                                blurRadius: 10,
                                spreadRadius: 1.0)
                          ],
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(14),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/icons/TestImage.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: isExpanded ? double.infinity : 90.0,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    'Сказка о маленьком принце. Он родился в старой деревне и задавался всего-лишь одним вопросом - “Кто я такой?”. Он познакомился со старенькой бабушкой, которая рассказала ему легенду о малыше Кокки Паттене.  Когда ему исполнилось 10 лет, он поехал в город. Его давняя мечта увидеть принца Алифея исполнилась. Хоть малышь и не подозревал, что он сам является потерянным принцем, он так сильно хотел им быть. И это история рассказывает о потерянном принце. ',
                    overflow: TextOverflow.fade,
                    softWrap: true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded; // Переключаем состояние
                });
              },
              child: Text(
                isExpanded ? 'Скрыть' : 'Подробнее',
                style: TextStyle(
                  color: AppColors.fontColor.withOpacity(0.5),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                  letterSpacing: 1,
                  fontFamily: 'TTNorms',
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, int index) {
                  return const Column(
                    children: [
                      AudioItemTile(
                        color: AppColors.greenColor,
                        title: 'Малышь Кокки 1',
                        duration: '30 минут',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
