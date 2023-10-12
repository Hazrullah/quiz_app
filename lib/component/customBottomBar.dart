import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x99FFC107),
              blurRadius: 8,
              offset: Offset(0, 0),
              spreadRadius: 2,
            )
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFE082),
              Color(0xFFFFF8E1),
              Color(0xFFFFD54F),
              Color(0xFFFFCA28),
            ],
            stops: [
              0.0,
              0.05,
              0.85,
              1.0
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_before,
                color: Color(0xFFE96F00),
              ),
            ),
            Container(
              width: 44,
              height: 20,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Color(0xffffff8e1),
                shadows: [
                  BoxShadow(
                    color: Color(0x66FFC107),
                    blurRadius: 8,
                    offset: Offset(0, 0),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Center(child: Text("1")),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
                color: Color(0xFFE96F00),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomBarDark extends StatelessWidget {

  const CustomBottomBarDark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x999FA9D6),
              blurRadius: 8,
              offset: Offset(0, 0),
              spreadRadius: 2,
            )
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xFF9FA9D6),
              Color(0xFF5F6791),
              Color(0xFF505875),
            ],
            stops: [
              0.0,
              0.85,
              1.0
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_before,
                color: Colors.white,
              ),
            ),
            Container(
              width: 44,
              height: 20,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Color(0xFF9FA9D6),
                shadows: [
                  BoxShadow(
                    color: Color(0xFF9FA9D6),
                    blurRadius: 8,
                    offset: Offset(0, 0),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Center(child: Text("1")),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}