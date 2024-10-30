// import 'package:flutter/material.dart';
// import 'package:parrainage_/models/candidat.dart';
// import 'package:parrainage_/themes/light_color.dart';
// import 'package:parrainage_/widgets/extentions.dart';
// import 'package:parrainage_/widgets/title_text.dart';

// // import 'package:flutter_ecommerce_app/src/model/candidat.dart';
// // import 'package:flutter_ecommerce_app/src/themes/light_color.dart';
// // import 'package:flutter_ecommerce_app/src/widgets/title_text.dart';
// // import 'package:flutter_ecommerce_app/src/widgets/extentions.dart';

// class CandidatCard extends StatelessWidget {
//   final Candidat candidat;
//   final ValueChanged<Candidat> onSelected;
//   CandidatCard({Key? key, required this.candidat, required this.onSelected}) : super(key: key);

//   @override
//   _CandidatCardState createState() => _CandidatCardState();
  
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

// class _CandidatCardState extends State<CandidatCard> {
//   late Candidat candidat;
//   @override
//   void initState() {
//     candidat = widget.candidat;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: LightColor.background,
//         borderRadius: BorderRadius.all(Radius.circular(20)),
//         boxShadow: <BoxShadow>[
//           BoxShadow(color: Color(0xfff8f8f8), blurRadius: 15, spreadRadius: 10),
//         ],
//       ),
//       margin: EdgeInsets.symmetric(vertical: !candidat.isSelected ? 20 : 0),
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             // Positioned(
//             //   left: 0,
//             //   top: 0,
//             //   child: IconButton(
//             //     icon: Icon(
//             //       candidat.isliked ? Icons.favorite : Icons.favorite_border,
//             //       color:
//             //           candidat.isliked ? LightColor.red : LightColor.iconColor,
//             //     ),
//             //     onPressed: () {},
//             //   ),
//             // ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 SizedBox(height: candidat.isSelected ? 15 : 0),
//                 Expanded(
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: <Widget>[
//                       CircleAvatar(
//                         radius: 40,
//                         backgroundColor: LightColor.orange.withAlpha(40),
//                       ),
//                       Image.asset(candidat.image)
//                     ],
//                   ),
//                 ),
//                 // SizedBox(height: 5),
//                 TitleText(
//                   text: candidat.name,
//                   fontSize: candidat.isSelected ? 16 : 14,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ).ripple(() {
//         Navigator.of(context).pushNamed('/detail');
//         onSelected(candidat);
//       }, borderRadius: BorderRadius.all(Radius.circular(20))),
//     );
//   }
  
//   void onSelected(Candidat candidat) {}
// }
