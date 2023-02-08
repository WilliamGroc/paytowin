import 'package:flutter/cupertino.dart';
import 'package:paytowin/app/core/theme/colors.dart';

class BoardSide extends StatelessWidget {
  late String title;

  BoardSide({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.red,
        width: MediaQuery.of(context).size.width,
        child: Text(this.title));
  }
}
