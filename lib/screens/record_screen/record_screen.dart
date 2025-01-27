import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/screens/home_screen/widgets/custom_home_top_clip_path.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_screen_state.dart';
import 'package:memory_box_avada/screens/record_screen/listen/listen_record_screen.dart';
import 'package:memory_box_avada/screens/record_screen/record/record_record_screen.dart';
import 'package:memory_box_avada/screens/record_screen/widgets/audio_wave.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class RecordScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  RecordScreen({super.key, required this.scaffoldKey});

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  @override
  void initState() {
    super.initState();
  }

  bool recordingMode = true;
  final List<double> decibelValues = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purpleColor,
        toolbarHeight: 56,
        leading: Builder(
          builder: (context) => IconButton(
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
      body: Stack(
        children: [
          const CustomHomeTopClipPath(),
          Padding(
            padding: const EdgeInsets.only(
              left: 6.0,
              right: 6.0,
              top: 30.0,
            ),
            child: BlocBuilder<RecordBloc, RecordState>(
              builder: (context, state) {
                if (state is RecordingInProgress) {
                  return const RecordScreenRecordAction();
                }
                if (state is RecordingStopped) {
                  return const ListenRecordScreen();
                }
                return const Text('err');
              },
            ),
          )
        ],
      ),
    );
  }
}
