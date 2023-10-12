import 'package:flutter/material.dart';

import 'component/customAppBar.dart';
import 'component/customBottomBar.dart';

class LearningSection extends StatelessWidget {
  const LearningSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: buildAppBar(),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFBB7C),
                Color(0xFFFFF8E1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Card(
                child: Container(
                  decoration:  ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: const Color(0xFFFFF8E1),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33FFC107),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  height: 80,
                  padding: const EdgeInsets.all(8),
                    child: const Text("hello"),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.alarm),
                title: Text("hello"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
