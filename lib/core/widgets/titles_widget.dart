import 'package:flutter/material.dart';

import '../constants.dart';

class TitlesWidget extends StatefulWidget {
  TitlesWidget({Key? key, this.icondata, this.text, this.ontap, }) : super(key: key);

 final IconData? icondata;

final String? text;
final Function()? ontap;
  @override
  State<TitlesWidget> createState() => _TitlesWidgetState();
}

class _TitlesWidgetState extends State<TitlesWidget> {
  // Define a list of IconData for your icons
  List<IconData> iconDataList = [
    Icons.launch,

  ];

  // Define a list of titles for tooltips
  List<String> titlesList = [
    'Launch',
    'Mission Data',
    'Space Gallery',
    'About the Sensor',
    'Track EMIT Location',
    'Go to VR Experience',
    'Resources',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 33.0),
        child: GestureDetector(
          onTap: widget.ontap,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                 Row(
                    children: [
                      Container(
                        width: 50,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            widget.icondata!, // Use the corresponding icon
                            color: KmainColor,
                            size: 24,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        widget.text!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily:  'poppins',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
              ]),
        ));
  }}

//   Box(width: 10),
//         AnimatedContainer(
//           duration: Duration(milliseconds: 300),
//           width: 200 ,
//           height: 50,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular( 25),
//               bottomLeft: Radius.circular( 25),
//             ),
//           ),
//           child:  Center(
//             child: Text(
//               'Launch',
//               style: TextStyle(
//                 color: KmainColor,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//           )
//               : null,
//         )
//         // Animated containers for each content (similar to your original code)
//         // ...
//       ],
//     );
//   }
// }
//
//
//
//
//
//



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../constants.dart';
//
// class TitlesWidget extends StatefulWidget {
//   TitlesWidget({Key? key}) : super(key: key);
//
//   @override
//   State<TitlesWidget> createState() => _TitlesWidgetState();
// }
//
// class _TitlesWidgetState extends State<TitlesWidget> {
//   bool showNewText = false;
//
//   void _showNewText() {
//     setState(() {
//       showNewText = !showNewText;
//     });
//   }
//
//   bool isContainerVisible = false;
//
//   bool isContainer2Visible = false;
//
//   bool isContainer3Visible = false;
//
//   bool isContainer4Visible = false;
//
//   bool isContainer5Visible = false;
//
//   bool isContainer6Visible = false;
//
//   bool isContainer7Visible = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedPositioned(
//       duration: Duration(milliseconds: 600),
//       curve: Curves.easeInOut,
//       // bottom: showNewText ? null : -SizeConfig.screenHeight!,
//       left: 0,
//       top: 150,
//       right: 0,
//       child: Column(
//         children: [
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isContainerVisible = !isContainerVisible;
//                     });
//                   },
//                   child: Container(
//
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         '1',
//                         style: TextStyle(
//                           color: KmainColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 if (isContainerVisible) SizedBox(width: 10),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 300),
//                   width: isContainerVisible ? 200 : 0,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(isContainerVisible ? 25 : 0),
//                       bottomLeft: Radius.circular(isContainerVisible ? 25 : 0),
//                     ),
//                   ),
//                   child: isContainerVisible
//                       ? Center(
//                     child: Text(
//                       'Launch',
//                       style: TextStyle(
//                         color: KmainColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   )
//                       : null,
//                 )
// ,]),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isContainer2Visible = !isContainer2Visible;
//                     });
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         '2',
//                         style: TextStyle(
//                           color: KmainColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 if (isContainer2Visible) SizedBox(width: 10),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 300),
//                   width: isContainer2Visible ? 200 : 0,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(isContainer2Visible ? 25 : 0),
//                       bottomLeft: Radius.circular(isContainer2Visible ? 25 : 0),
//                     ),
//                   ),
//                   child: isContainer2Visible
//                       ? Center(
//                     child: Text(
//                       'Mission Data',
//                       style: TextStyle(
//                         color: KmainColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   )
//                       : null,
//                 ),]),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isContainer3Visible = !isContainer3Visible;
//                     });
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         '3',
//                         style: TextStyle(
//                           color:  KmainColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 if (isContainer3Visible) SizedBox(width: 10),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 300),
//                   width: isContainer3Visible ? 200 : 0,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(isContainer3Visible ? 25 : 0),
//                       bottomLeft: Radius.circular(isContainer3Visible ? 25 : 0),
//                     ),
//                   ),
//                   child: isContainer3Visible
//                       ? Center(
//                     child: Text(
//                       'Space Gallery',
//                       style: TextStyle(
//                         color:  KmainColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   )
//                       : null,
//                 ),]),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isContainer4Visible = !isContainer4Visible;
//                     });
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         '4',
//                         style: TextStyle(
//                           color:  KmainColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 if (isContainer4Visible) SizedBox(width: 10),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 300),
//                   width: isContainer4Visible ? 200 : 0,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(isContainer4Visible ? 25 : 0),
//                       bottomLeft: Radius.circular(isContainer4Visible ? 25 : 0),
//                     ),
//                   ),
//                   child: isContainer4Visible
//                       ? Center(
//                     child: Text(
//                       'About the Sensor',
//                       style: TextStyle(
//                         color:  KmainColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   )
//                       : null,
//                 ),]),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isContainer5Visible = !isContainer5Visible;
//                     });
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         '5',
//                         style: TextStyle(
//                           color:  KmainColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 if (isContainer5Visible) SizedBox(width: 10),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 300),
//                   width: isContainer5Visible ? 200 : 0,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(isContainer5Visible ? 25 : 0),
//                       bottomLeft: Radius.circular(isContainer5Visible ? 25 : 0),
//                     ),
//                   ),
//                   child: isContainer5Visible
//                       ? Center(
//                     child: Text(
//                       'Track EMIT Location',
//                       style: TextStyle(
//                         color:  KmainColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   )
//                       : null,
//                 ),]),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isContainer6Visible = !isContainer6Visible;
//                     });
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         '6',
//                         style: TextStyle(
//                           color:  KmainColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 if (isContainer6Visible) SizedBox(width: 10),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 300),
//                   width: isContainer6Visible ? 200 : 0,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(isContainer6Visible ? 25 : 0),
//                       bottomLeft: Radius.circular(isContainer6Visible ? 25 : 0),
//                     ),
//                   ),
//                   child: isContainer6Visible
//                       ? Center(
//                     child: Text(
//                       'Go to VR Experience',
//                       style: TextStyle(
//                         color:  KmainColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   )
//                       : null,
//                 ),]),
//           Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       isContainer7Visible = !isContainer7Visible;
//                     });
//                   },
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white,
//                     ),
//                     child: Center(
//                       child: Text(
//                         '7',
//                         style: TextStyle(
//                           color:  KmainColor,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 if (isContainer7Visible) SizedBox(width: 10),
//                 AnimatedContainer(
//                   duration: Duration(milliseconds: 300),
//                   width: isContainer7Visible ? 200 : 0,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(isContainer7Visible ? 25 : 0),
//                       bottomLeft: Radius.circular(isContainer7Visible ? 25 : 0),
//                     ),
//                   ),
//                   child: isContainer7Visible
//                       ? Center(
//                     child: Text(
//                       'Resources',
//                       style: TextStyle(
//                         color: KmainColor,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                       ),
//                     ),
//                   )
//                       : null,
//                 ),])
//         ],
//       ),
//
//
//     );
//   }
// }
