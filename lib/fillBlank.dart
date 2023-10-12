// import 'package:flutter/material.dart';
//
// import 'component/customAppBar.dart';
// import 'component/customBody.dart';
// import 'component/customBottomBar.dart';
//
// class FillBlank extends StatelessWidget {
//   const FillBlank({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const Drawer(),
//       appBar: buildAppBar(),
//       body: const Body(answerStyle: FillTheBlank()),
//       bottomNavigationBar: const CustomBottomBar(),
//     );
//   }
// }
//
// class FillTheBlank extends StatelessWidget {
//   const FillTheBlank({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           height: 100,
//           decoration: ShapeDecoration(
//             color: const Color(0xFFFFF8E1),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//             shadows: const [
//               BoxShadow(
//                 color: Color(0x33FFC107),
//                 blurRadius: 8,
//                 offset: Offset(0, 4),
//                 spreadRadius: 2,
//               )
//             ],
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//             child: Container(
//               decoration: const BoxDecoration(
//                   border: Border(bottom: BorderSide(width: 3))),
//             ),
//           ),
//         ),
//         const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             AlphabetCard(alphabet: "a"),
//             AlphabetCard(alphabet: "a"),
//             AlphabetCard(alphabet: "a"),
//           ],
//         ),
//         const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             AlphabetCard(alphabet: "a"),
//             AlphabetCard(alphabet: "a"),
//             AlphabetCard(alphabet: "a"),
//           ],
//         ),
//       ],
//     );
//   }
// }
//
// class AlphabetCard extends StatelessWidget {
//   final String alphabet;
//
//   const AlphabetCard({super.key, required this.alphabet});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
//       decoration: ShapeDecoration(
//         color: const Color(0xFFFFF8E1),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         shadows: const [
//           BoxShadow(
//             color: Color(0x33FFC107),
//             blurRadius: 8,
//             offset: Offset(0, 4),
//             spreadRadius: 2,
//           )
//         ],
//       ),
//       child: Text(
//         alphabet,
//         style: const TextStyle(
//           fontSize: 16,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//     );
//   }
// }
