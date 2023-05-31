import 'package:flutter/material.dart';
import 'package:job_search_app/helpers/constants.dart';
import 'package:job_search_app/screens/home_screen.dart';
import 'package:job_search_app/widgets/custom_text.dart';
import 'package:job_search_app/widgets/pop_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: popButton(context),
        ),
        backgroundColor: Constants.white,
        surfaceTintColor: Colors.transparent  ,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Constants.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30.0,),
                  customText(
                    30.0,
                    FontWeight.w700,
                    Constants.primaryColor,
                    "Part-time",
                  ),
                  customText(
                    18.0,
                    FontWeight.w500,
                    Constants.primaryColor,
                    "Job Opportunities",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: jobTile(
                      "https://w7.pngwing.com/pngs/326/85/png-transparent-google-logo-google-text-trademark-logo.png",
                      "React Developer",
                      "Fulltime",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
