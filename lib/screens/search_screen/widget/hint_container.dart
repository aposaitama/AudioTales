import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_state.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class HintContainer extends StatelessWidget {
  final ValueChanged<int> onTap;
  const HintContainer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchBlocState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 105, right: 20.0, left: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 45.0,
                left: 45.0,
                right: 45.0,
                bottom: 15.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.filteredAudiosList.length,
                      itemBuilder: (context, int index) {
                        return GestureDetector(
                          onTap: () => onTap.call(index),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Text(
                              state.filteredAudiosList[index].title,
                              style: AppTextStyles.blackTitle,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
