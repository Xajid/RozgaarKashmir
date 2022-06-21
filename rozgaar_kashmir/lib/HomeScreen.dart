import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rozgaar_kashmir/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.6,
                  child: Text(
                    "Discover your dream job",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: AppColors.yellowColor),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search a job or position",
                    contentPadding: EdgeInsets.only(left: 10, right: 10),
                    hintStyle: TextStyle(color: Colors.grey[500], fontSize: 16),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.grey[500],
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          featuredJobs(),
          recommendedJobs()
        ],
      )),
    );
  }

  Widget featuredJobs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured Jobs",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: Text(
                  "See all",
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          FeaturedTile(
            backgroundColor: AppColors.greenColor,
            title: "Product Designer",
            subtitle: "Google",
            category: "Design",
            time: "Full-Time",
            experience: "Junior",
            location: "California,USA",
            salary: "160,00/year",
          )
        ],
      ),
    );
  }

  Widget recommendedJobs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended Jobs",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: Text(
                  "See all",
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          RecommendedTile(
            title: "UI/UX Designer",
            subtitle: "Figma",
            rate: "30/h",
          )
        ],
      ),
    );
  }
}

class FeaturedTile extends StatelessWidget {
  final Color? backgroundColor;
  final String? title;
  final String? subtitle;
  final String? category;
  final String? time;
  final String? experience;
  final String? location;
  final String? salary;
  const FeaturedTile(
      {Key? key,
      this.backgroundColor,
      this.subtitle,
      this.title,
      this.category,
      this.time,
      this.location,
      this.experience,
      this.salary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        title!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      subtitle!,
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text(
                      category!,
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text(
                      time!,
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Text(
                      experience!,
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 15, bottom: 20, right: 25, left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  location!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  salary!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecommendedTile extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? rate;
  const RecommendedTile({Key? key, this.title, this.subtitle, this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 3)
            ],
            color: AppColors.whiteColot),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: 40,
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.gamepad,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        subtitle!,
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    rate!,
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
