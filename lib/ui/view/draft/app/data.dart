<<<<<<< HEAD
import 'package:zurichat/constants/app_strings.dart';

class DraftedItem {
  final String? username, message, time;

  DraftedItem({
    this.username,
    this.message,
    this.time,
  });
}
=======
import 'package:zurichat/models/drafted_item_model.dart';
import 'package:zurichat/utilities/constants/app_strings.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

double mySize = 0.0;
double kPadding = mySize * 0.025;

List<DraftedItem> draftedList = [
  DraftedItem(
    username: OyinkanUA,
    message: Okay,
    time: SampleDate,
  ),
  DraftedItem(
    username: AbdSalam,
    message: NoWahala,
    time: SampleDate,
  ),
  DraftedItem(
    username: TeamSocrates,
    message: Cool,
    time: SampleDate,
  ),
];
