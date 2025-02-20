import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc_event.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc_state.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/widgets/custom_text_field.dart';
import 'package:memory_box_avada/screens/auth_screen/widgets/custom_top_clip_path.dart';
import 'package:memory_box_avada/screens/welcome_screen/widgets/orange_gesture_detector.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class RegisterScreenEnterNum extends StatefulWidget {
  const RegisterScreenEnterNum({super.key});

  @override
  State<RegisterScreenEnterNum> createState() => _RegisterScreenEnterNumState();
}

class _RegisterScreenEnterNumState extends State<RegisterScreenEnterNum> {
  final TextEditingController phoneNumber = TextEditingController();
  final maskFormatter = MaskTextInputFormatter(
    mask: '+380 (__) ___ __ __',
    filter: {"_": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  void dispose() {
    phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<RegisterScreenBloc, RegisterScreenBlocState>(
        listener: (context, state) {
          if (state.codeStatus == RegisterCodeSentStatus.successfull &&
              state.verigicationId.isNotEmpty) {
            context.go(
              '/register_code',
            );
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomTopClipPath(
                title: 'Регистрация',
              ),
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        'Введи номер телефона',
                        style: TextStyle(
                          color: AppColors.fontColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          height: 1.0,
                          fontFamily: 'TTNorms',
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      CustomTextField(
                        controller: phoneNumber,
                        maskFormatted: maskFormatter,
                      ),
                      const SizedBox(
                        height: 75.0,
                      ),
                      OrangeGestureDetector(
                        text: 'Продолжить',
                        onTap: () {
                          context.read<RegisterScreenBloc>().add(
                                PhoneSubmittedRegisterScreenBlocEvent(
                                  '+380${maskFormatter.getUnmaskedText()}',
                                ),
                              );
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () async {
                          context.read<RegisterScreenBloc>().add(
                                const AnonymousRegisterScreenBlocEvent(),
                              );
                        },
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Позже',
                          style: TextStyle(
                            color: AppColors.fontColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 3,
                            fontFamily: 'TTNorms',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 10),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(21.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Регистрация привяжет твои сказки  к облаку, после чего они всегда будут с тобой',
                            style: TextStyle(
                              color: AppColors.fontColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'TTNorms',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
