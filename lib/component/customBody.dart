import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Widget answerStyle;

  const Body({
    super.key,
    required this.answerStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x99FFC107),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFF8E1),
                        Color(0xFFFFBB7C),
                        Color(0xFFFFECB3),
                      ],
                      stops: [0.0, 0.15, 1.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    // height: 250,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xffffff8e1),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x33FFC107),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: const Center(child: Text("question")),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(child: answerStyle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BodyDark extends StatelessWidget {
  final Widget answerStyle;

  const BodyDark({
    super.key,
    required this.answerStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF5F6791),
              Color(0xFF9FA9D6),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x999FA9D6),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF747DA1),
                        Color(0xFF505875),
                        Color(0xFF9FA9D6),
                      ],
                      stops: [0.0, 0.15, 1.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    // height: 250,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF9FA9D6),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x33505875),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "question",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(child: answerStyle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
