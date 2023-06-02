import 'package:voyeger/add_deadline.dart';
import 'package:flutter/material.dart';

class AddGoal extends StatefulWidget {
  const AddGoal({Key? key}) : super(key: key);

  @override
  State<AddGoal> createState() => _AddGoalState();
}

class _AddGoalState extends State<AddGoal> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color(0xFFF0F8FF),
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: const Color(0xFFF0F8FF),
                  title: Container(
                      margin: const EdgeInsets.only(left: 30),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Add your goal',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 0,
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 15)),
                    labelPadding: const EdgeInsets.only(left: 30, right: 30),
                    indicatorPadding: const EdgeInsets.all(10),
                    isScrollable: true,
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
                    //automaticIndicatorColorAdjustment: true,
                    tabs: [
                      const Tab(
                        child: Text(
                          'WHAT',
                          style: TextStyle(),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddDeadline()),
                            );
                          },
                          child: const Tab(
                              child: Text(
                            'WHEN',
                            style: TextStyle(),
                          ))),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddDeadline()),
                            );
                          },
                          child: const Tab(
                              child: Text(
                            'HOW',
                            style: TextStyle(),
                          ))),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddDeadline()),
                            );
                          },
                          child: const Tab(
                              child: Text(
                            'WHY',
                            style: TextStyle(),
                          ))),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: <Widget>[
                Center(
                  child: Container(
                    child: Container(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 50,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter here",
                                      contentPadding: const EdgeInsets.all(20),
                                      border: InputBorder.none,
                                      prefixIcon: Image.asset(
                                          "assets/images/archer.png")),
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: screenSize.width * 0.8,
                            height: screenSize.height / 1.5,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(
                                      left: screenSize.width / 30,
                                      top: screenSize.width / 30),
                                  child: Text(
                                    "Tips",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: screenSize.width * 1 / 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: screenSize.width / 30,
                                              top: screenSize.width / 30),
                                          alignment: Alignment.topCenter,
                                          width: screenSize.width / 16,
                                          child: Image.asset(
                                              "assets/images/compas.png")),
                                      Container(
                                        padding: EdgeInsets.all(
                                            screenSize.width / 25),
                                        child: Text(
                                          "Be specifi here. Vague destinations\n"
                                          "hard to reach.Examples of vague\n"
                                          "goals: Get fit,Get rich.Better goals\n"
                                          "would be:Lose 5kg,Make first\n"
                                          "1000 selling t-shirts online",
                                          style: TextStyle(
                                              fontSize: screenSize.width / 30),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.width / 25,
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: screenSize.width / 30,
                                              top: screenSize.width / 30),
                                          alignment: Alignment.topCenter,
                                          width: screenSize.width / 16,
                                          child: Image.asset(
                                              "assets/images/bulb.png")),
                                      Container(
                                        padding: EdgeInsets.all(
                                            screenSize.width / 25),
                                        child: Text(
                                          "Tap the goal's emoji to change it!",
                                          style: TextStyle(
                                              fontSize: screenSize.width / 30),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: screenSize.width / 50,
                                ),
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: screenSize.width / 30,
                                              top: screenSize.width / 30),
                                          alignment: Alignment.topCenter,
                                          width: screenSize.width / 16,
                                          child: Image.asset(
                                              "assets/images/book.png")),
                                      Container(
                                        padding: EdgeInsets.all(
                                            screenSize.width / 25),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Need more help?",
                                              style: TextStyle(
                                                  fontSize:
                                                      screenSize.width / 30),
                                            ),
                                            Text(
                                              "Read this!.",
                                              style: TextStyle(
                                                  fontSize:
                                                      screenSize.width / 30,
                                                  color: Colors.blue),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
