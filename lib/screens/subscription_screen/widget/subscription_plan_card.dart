import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:memory_box_avada/models/user_model.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc_event.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc_state.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class SubscriptionPlanCard extends StatefulWidget {
  final int price;
  final String duration;
  final Subscription type;

  const SubscriptionPlanCard({
    super.key,
    required this.price,
    required this.duration,
    required this.type,
  });

  @override
  State<SubscriptionPlanCard> createState() => _SubscriptionPlanCardState();
}

class _SubscriptionPlanCardState extends State<SubscriptionPlanCard> {
  late Subscription? userSub;

  @override
  Widget build(BuildContext context) {
    userSub = context.select<UserBloc, Subscription?>(
      (bloc) => bloc.state.userModel?.subscription,
    );

    if (userSub != null) {
      context.read<SubscriptionBloc>().add(SubscriptionSelected(userSub!));
    }

    return BlocBuilder<SubscriptionBloc, SubscriptionBlocState>(
      builder: (context, state) {
        final selectedType = state.subscriptionType;

        final bool isSelected = selectedType == widget.type;

        return GestureDetector(
          onTap: () {
            context
                .read<SubscriptionBloc>()
                .add(SubscriptionSelected(widget.type));
          },
          child: Container(
            height: 220,
            width: MediaQuery.of(context).size.width / 2 - 22.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${widget.price.toString()}грн',
                  style: AppTextStyles.body,
                ),
                const Gap(10.0),
                Text(
                  widget.duration,
                  style: AppTextStyles.blackTitleLight,
                ),
                const Gap(34.0),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.0,
                      color: Colors.black,
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: SvgPicture.asset(
                            'assets/icons/Check_Box_Done.svg',
                          ),
                        )
                      : null,
                ),
                const Gap(28.0),
              ],
            ),
          ),
        );
      },
    );
  }
}
