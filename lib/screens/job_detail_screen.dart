import 'package:flutter/material.dart';
import 'package:job_search_app/helpers/constants.dart';
import 'package:job_search_app/screens/home_screen.dart';
import 'package:job_search_app/widgets/custom_text.dart';
import 'package:job_search_app/widgets/pop_button.dart';

class JobDetailScreen extends StatefulWidget {
  const JobDetailScreen({super.key});

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 330,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: popButton(context),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey.withOpacity(0.3)),
                  child: Icon(
                    Icons.share,
                    color: Constants.primaryColor,
                  ),
                ),
              )
            ],
            backgroundColor: Constants.white,
            surfaceTintColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    jobLogo(
                        "https://w7.pngwing.com/pngs/326/85/png-transparent-google-logo-google-text-trademark-logo.png",
                        75.0,
                        75.0,
                        55.0,
                        55.0),
                    const SizedBox(
                      height: 20.0,
                    ),
                    customText(22.0, FontWeight.w700, Constants.primaryColor,
                        "Senior React Developer (Remote)"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customText(16.0, FontWeight.w500,
                            Constants.primaryColor, "ERP /"),
                        Icon(
                          Icons.location_on_outlined,
                          color: Constants.gray2,
                          size: 18.0,
                        ),
                        customText(16.0, FontWeight.w500, Constants.gray, "US"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 75,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)),
            color: Constants.lightWhite),
        child: Row(children: [
          
        ],),
      ),
    );
  }
}
