import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_state.dart';
import 'package:memory_box_avada/screens/record_screen/listen/listen_record_screen.dart';
import 'package:memory_box_avada/screens/record_screen/record/record_record_screen.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({
    super.key,
  });

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  bool recordingMode = true;
  final List<double> decibelValues = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 6.0,
              right: 6.0,
            ),
            child: BlocBuilder<RecordStatusBloc, RecordStatusState>(
              builder: (context, state) {
                print(state);
                if (state.status == RecordCommonStatus.record) {
                  return const RecordScreenRecordAction();
                } else if (state.status == RecordCommonStatus.listen) {
                  return const ListenRecordScreen();
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
