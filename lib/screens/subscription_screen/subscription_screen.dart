import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:memory_box_avada/models/user_model.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc_event.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc_state.dart';
import 'package:memory_box_avada/screens/subscription_screen/widget/subscription_benefits.dart';
import 'package:memory_box_avada/screens/subscription_screen/widget/subscription_plan_card.dart';
import 'package:memory_box_avada/screens/welcome_screen/widgets/orange_gesture_detector.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class SubscriptionScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SubscriptionScreen({super.key, required this.scaffoldKey});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Подписка\n',
            style: AppTextStyles.appBarText,
            children: <TextSpan>[
              TextSpan(
                text: 'Расширь возможности',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                  letterSpacing: 1,
                  fontFamily: 'TTNorms',
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: AppColors.purpleColor,
        leading: Builder(
          builder: (context) => Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/drawer.svg',
                  height: 24.0,
                  width: 24.0,
                ),
              ),
              onPressed: () => widget.scaffoldKey.currentState?.openDrawer(),
            ),
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => SubscriptionBloc(),
        child: Stack(
          children: [
            const CustomProfileTopClipPath(
              minusHeigth: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 46.0,
                bottom: 9.0,
                left: 5.0,
                right: 5.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 34.0),
                      child: Text(
                        'Выбери подписку',
                        style: AppTextStyles.body,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SubscriptionPlanCard(
                            price: 300,
                            duration: 'в месяц',
                            type: Subscription.monthly,
                          ),
                          SubscriptionPlanCard(
                            price: 1800,
                            duration: 'в год',
                            type: Subscription.yearly,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45.0),
                      child: SubscriptionBenefits(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child:
                          BlocBuilder<SubscriptionBloc, SubscriptionBlocState>(
                        builder: (context, state) {
                          return OrangeGestureDetector(
                            text: state.subscriptionType == Subscription.monthly
                                ? 'Подписаться на месяц'
                                : 'Подписаться на год',
                            onTap: () {
                              context.read<SubscriptionBloc>().add(
                                    const SubscriptionUpdate(),
                                  );
                            },
                          );
                        },
                      ),
                    ),
                    const Gap(34),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
