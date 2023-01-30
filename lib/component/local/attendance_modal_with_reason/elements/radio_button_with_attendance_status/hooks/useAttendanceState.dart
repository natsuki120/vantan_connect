enum AttendanceState {
  tardy('遅刻'),
  absence('欠席'),
  other('その他(公欠を除く');

  final String displayState;
  const AttendanceState(this.displayState);
}

//TODO: 変更が必須
// AttendanceState? useAttendanceState(BuildContext context) {
//   return use(_AttendanceState());
// }

// class _AttendanceState extends Hook<AttendanceState?> {
//   @override
//   __AttendanceStateState createState() => __AttendanceStateState();
// }

// class __AttendanceStateState
//     extends HookState<AttendanceState?, _AttendanceState> {
//   //int _number = 0;
//   AttendanceState? _attendanceState = AttendanceState.absence;

//   // @override
//   // void initHook() {
//   //   super.initHook();
//   //   (_value) {
//   //     setState(() {
//   //       _attendanceState = _value;
//   //     });
//   //   };
//   // }

//   @override
//   AttendanceState? build(BuildContext context) {
//     return _attendanceState;
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }
// }
