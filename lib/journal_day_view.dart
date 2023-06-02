import 'package:flutter/material.dart';

class JournalDayView extends StatelessWidget {
  const JournalDayView({super.key});

  @override
  Widget build(BuildContext context) {
    final CurrentWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      backgroundColor: 
      CurrentWidth < 600 ? Color.fromARGB(255, 176, 174, 169) : Color.fromARGB(255, 237, 244, 250),
      body: Center(
        child: SafeArea(
            child: Stack(
          children: [
            Container(
              height: 720,
              width: 600,
              color: Color.fromARGB(26, 91, 5, 5),
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
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(31, 20, 6, 148),
                      borderRadius: BorderRadius.circular(10)),

                  height: 620,
                  width: 540,
      
                  // child: Padding(padding: EdgeInsets.only(top: 60,left: 60)),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 40, left: 30),
                    child: 
                    // Row(
                    //   children: [
                        Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "20 Thu, Nov ",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(tabs: [
            Tab(text: "Day"),
            Tab(text: "Week"),
            Tab(text: "Month"),
            Tab(text: "Year"),
          ]),
          TabBarView(
            children: [
              // Content for Day tab
              Text("Day Content"),
              // Content for Week tab
              Text("Week Content"),
              // Content for Month tab
              Text("Month Content"),
              // Content for Year tab
              Text("Year Content"),
            ],
          ),
        ],
      ),
    ),
  ],
),

                       
                        // Padding(
                        //   padding: EdgeInsets.only(left: 90),
                        //   child: Column(children: [Text("Day")]),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 40),
                        //   child: Column(
                        //     children: [Text("Week")],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 40),
                        //   child: Column(
                        //     children: [Text("Month")],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 40),
                        //   child: Column(
                        //     children: [Text("Year")],
                        //   ),
                        // )
                      // ],
                    ),
                  )
                  ),
           
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 120),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 230, 247, 255),
                    borderRadius: BorderRadius.circular(10)),
                height: 520,
                width: 470,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 10, right: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.add),
                          hintText: "Add an action, entry or habit",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
        ),
      ),
      ),
    );
  }
}
