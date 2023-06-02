import 'package:flutter/material.dart';

class JournalDayViewTwo extends StatelessWidget {
  const JournalDayViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final currentWidth = constraints.maxWidth;
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: currentWidth < 600
                ? const Color.fromARGB(255, 176, 174, 169)
                : const Color.fromARGB(255, 237, 244, 250),
            body: ListView(
              children: [
                Center(
                  child: SafeArea(
                    child: Stack(
                      children: [
                        Container(
                          height: 720,
                          width: currentWidth,
                          color: const Color.fromARGB(26, 91, 5, 5),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 30, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Journal Day View - Empty"),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 30, right: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(31, 20, 6, 148),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 620,
                            width: currentWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 30,
                                    left: 30,
                                  ),
                                  child: Text(
                                    "20 Thu, Nov",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    left: 30,
                                    right: 30,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 40),
                                    child: TabBar(
                                      indicator: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 88, 164, 241),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      tabs: [
                                        Tab(text: "Day"),
                                        Tab(text: "Week"),
                                        Tab(text: "Month"),
                                        Tab(text: "Year"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, top: 150, right: 60),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 230, 247, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 520,
                            width: currentWidth,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    top: 20,
                                    right: 10,
                                  ),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.add),
                                      hintText:
                                          "Add an action, entry, or habit",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
