import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_search_app/helpers/constants.dart';
import 'package:job_search_app/models/book.dart';
import 'package:job_search_app/models/job.dart';
import 'package:job_search_app/network/job_network.dart';
import 'package:job_search_app/screens/search_screen.dart';
import 'package:job_search_app/widgets/custom_text.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> employmentTypes = ["Full-time", "Part-time", "Contract"];
  String selectedEmploymentType = "";
  Color buttonColor = Constants.primaryColor;

  void changeButtonColor(String employmentType) {
    setState(() {
      selectedEmploymentType = employmentType;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  fetchJobs() async {
    JobNetwork jn = JobNetwork();
    List<Job> jobs = await jn.jobSearch(
        "Flutter%20developer%20in%20Karachi%2C%20PK", 1, "1");
    print("response: ${jobs[0].jobDescription}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 120.0,
                    ),
                    customText(22.0, FontWeight.w400, Constants.primaryColor,
                        "Hello Abdur"),
                    SizedBox(height: 8),
                    customText(30.0, FontWeight.w700, Constants.primaryColor,
                        "Let's find you a job"),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                              hintText: 'What are you looking for?',
                              hintStyle: GoogleFonts.dmSans(),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () async {
                            await fetchJobs();
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                color: Constants.tertiaryColor,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Icon(
                              Icons.search_rounded,
                              color: Colors.white.withOpacity(0.7),
                              size: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 36.0,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: employmentTypes.length,
                          itemBuilder: (context, index) {
                            return buildButton(employmentTypes[index]);
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        customText(24.0, FontWeight.w500,
                            Constants.primaryColor, "Popular jobs"),
                        Spacer(),
                        customText(
                            20.0, FontWeight.w400, Constants.gray2, "Show all"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 200.0,
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return JobCard();
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        customText(24.0, FontWeight.w500,
                            Constants.primaryColor, "Nearby jobs"),
                        Spacer(),
                        customText(
                            20.0, FontWeight.w400, Constants.gray2, "Show all"),
                      ],
                    ),
                  ),
                  for (var i = 0; i < 10; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: jobTile(
                        "https://w7.pngwing.com/pngs/326/85/png-transparent-google-logo-google-text-trademark-logo.png",
                        "React Developer",
                        "Fulltime",
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String employmentType) {
    bool isSelected = selectedEmploymentType == employmentType;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: InkWell(
          onTap: () {
            changeButtonColor(employmentType);
            Get.to(() => SearchScreen(), transition: Transition.fadeIn);
          },
          child: Container(
            alignment: Alignment.center,
            width: 118,
            child: customText(
                14.0,
                FontWeight.w400,
                isSelected ? Colors.white : Constants.primaryColor,
                employmentType),
            decoration: BoxDecoration(
                border: Border.all(color: Constants.primaryColor),
                borderRadius: BorderRadius.circular(10.0),
                color: isSelected ? buttonColor : Colors.white),
          ),
        ));
  }
}

class JobCard extends StatefulWidget {
  const JobCard({super.key});

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      width: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Constants.lightWhite),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          jobLogo(
              "https://w7.pngwing.com/pngs/326/85/png-transparent-google-logo-google-text-trademark-logo.png",
              55.0,
              55.0,
              36.0,
              36.0),
          const SizedBox(
            height: 20.0,
          ),
          customText(20.0, FontWeight.w400, Constants.gray, "Google, LLC."),
          const SizedBox(
            height: 15.0,
          ),
          customText(
              24.0, FontWeight.w600, Constants.primaryColor, "React Developer"),
          customText(18.0, FontWeight.w600, Constants.gray2, "US"),
        ],
      ),
    );
  }
}

Widget jobLogo(String url, double containerHeight, double containerWidth,
    double imageHeight, double imageWidth) {
  return Stack(
    children: [
      Container(
        height: containerHeight,
        width: containerWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      Positioned(
        left: 10,
        top: 10,
        child: Container(
          height: imageHeight,
          width: imageWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(image: NetworkImage(url))),
        ),
      )
    ],
  );
}

Widget jobTile(String url, String jobName, String employmentType) {
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(vertical: 5.0),
    child: ListTile(
      leading: jobLogo(url, 55.0, 55.0, 36.0, 36.0),
      title: customText(18.0, FontWeight.w600, Constants.primaryColor, jobName),
      subtitle:
          customText(16.0, FontWeight.w400, Constants.gray, employmentType),
      tileColor: Constants.lightWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
  );
}
