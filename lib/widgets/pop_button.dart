import 'package:flutter/material.dart';
import 'package:job_search_app/helpers/constants.dart';
import 'package:line_icons/line_icons.dart';

Widget popButton(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.pop(context),
    child: Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.grey.withOpacity(0.3)),
      child: Icon(
        Icons.arrow_back_ios_sharp,
        color: Constants.primaryColor,
      ),
    ),
  );
}
