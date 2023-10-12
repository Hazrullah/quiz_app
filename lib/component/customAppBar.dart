import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    // elevation: 4,
    iconTheme: const IconThemeData(color: Color(0xFFE96F00)),
    flexibleSpace: Container(
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
          stops: [
            0.0,
            0.15,
            1.0
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.language),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.settings),
      ),
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

AppBar buildAppBarDark() {
  return AppBar(
    // elevation: 4,
    iconTheme: const IconThemeData(color: Colors.white),
    flexibleSpace: Container(
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
            Color(0xFF8D97C2),
          ],
          stops: [
            0.0,
            0.15,
            1.0
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.language),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.settings),
      ),
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}