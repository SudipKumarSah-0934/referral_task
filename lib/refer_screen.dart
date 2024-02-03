// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:referral_task/common_ui/custom_span_text.dart';
// import 'package:referral_task/common_ui/custom_text.dart';
// import 'package:referral_task/common_ui/custom_text_button.dart';
// import 'package:referral_task/custom_slider.dart';

// class ReferScreen extends StatefulWidget {
//   const ReferScreen({super.key});

//   @override
//   State<ReferScreen> createState() => _ReferScreenState();
// }

// class _ReferScreenState extends State<ReferScreen> {
//   final ExpansionTileController controller = ExpansionTileController();
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(246, 244, 244, 1),
//       appBar: AppBar(
//         toolbarHeight: 35.sp,
//         backgroundColor: const Color.fromRGBO(246, 244, 244, 1),
//         elevation: 0.0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CustomText(
//                 text: 'Refer & Earn',
//                 size: 32.sp,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const CircleAvatar(),
//                   10.horizontalSpace,
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                         maxWidth: MediaQuery.of(context).size.width / 1.29),
//                     child: Text(
//                       '${'xxxxxxxxxxxxxxx'} got ${'xxx'}(money) just now',
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                       softWrap: true,
//                       maxLines: 3,
//                     ),
//                   ),
//                 ],
//               ),
//               10.verticalSpace,
//               Container(
//                 decoration: BoxDecoration(
//                   color: const Color.fromRGBO(255, 255, 255, 1),
//                   borderRadius: BorderRadius.circular(25.0),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.grey,
//                       offset: Offset(0.0, 1.0), //(x,y)
//                       blurRadius: 1.0,
//                     ),
//                   ],
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(8.sp),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 8.sp),
//                             child: CustomText(
//                               text: "My Coins",
//                               size: 18.sp,
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {},
//                             child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Colors.greenAccent,
//                                     borderRadius: BorderRadius.circular(10.0)),
//                                 child: Padding(
//                                   padding: EdgeInsets.all(8.sp),
//                                   child: const CustomText(
//                                     text: 'Withdraw',
//                                     textColor: Colors.white,
//                                   ),
//                                 )),
//                           ),
//                         ],
//                       ),
//                       const CustomSliderWithIcons(),
//                       Column(
//                         children: [
//                           const CustomSpanText(
//                             normalText: 'Invite 3 new users to get ',
//                             boldText: 'N500',
//                           ),
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 8.sp),
//                             child: const Divider(),
//                           ),
//                           const CustomSpanText(
//                               normalText: 'Cash will expire in ',
//                               boldText: '6Day 13h 59min 34s')
//                         ],
//                       ),
//                       const CustomTextButton(text: 'Invite'),
//                     ],
//                   ),
//                 ),
//               ),
//               10.verticalSpace,
//               Container(
//                 // "How to Earn" container
//                 decoration: BoxDecoration(
//                   color: const Color.fromRGBO(243, 243, 243, 1),
//                   borderRadius: BorderRadius.circular(25.0),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.white,
//                       offset: Offset(0.0, 0.0), //(x,y)
//                       blurRadius: 25.0,
//                     ),
//                   ],
//                 ),
//                 child: Theme(
//                   data: ThemeData(
//                     // Set the divider color to transparent
//                     dividerColor: Colors.transparent,
//                   ),
//                   child: Column(
//                     children: [
//                       ExpansionTile(
//                         onExpansionChanged: (value) {
//                           setState(() {
//                             isExpanded = value;
//                           });
//                         },
//                         trailing: Icon(
//                           isExpanded == true
//                               ? xFontAwesomeIcons.angleDown
//                               : xFontAwesomeIcons.angleUp,
//                           color: Color.fromRGBO(125, 35, 224, 1),
//                         ),
//                         title: Padding(
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 8.sp, vertical: 4.sp),
//                           child: CustomText(
//                             text: "How To Earn",
//                             size: 18.sp,
//                             textColor: const Color.fromRGBO(125, 35, 224, 1),
//                           ),
//                         ),
//                         children: [
//                           ListView.builder(
//                               itemCount: 4,
//                               shrinkWrap: true,
//                               primary: false, // Set primary to false
//                               itemBuilder: (context, index) {
//                                 return Container(
//                                   padding: EdgeInsets.symmetric(
//                                       horizontal: 8.sp, vertical: 4.sp),
//                                   child: Row(
//                                     children: [
//                                       // ... (Your existing code for list item)
//                                       Expanded(
//                                         flex: 1,
//                                         child: Container(
//                                           decoration: BoxDecoration(
//                                             color: const Color.fromRGBO(
//                                                 255, 255, 255, 1),
//                                             borderRadius:
//                                                 BorderRadius.circular(15.0),
//                                             boxShadow: const [
//                                               BoxShadow(
//                                                 color: Colors.grey,
//                                                 offset:
//                                                     Offset(0.0, 1.0), //(x,y)
//                                                 blurRadius: 1.0,
//                                               ),
//                                             ],
//                                           ),
//                                           child: Padding(
//                                             padding: EdgeInsets.symmetric(
//                                                 vertical: 4.sp),
//                                             child: Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               children: [
//                                                 CustomText(
//                                                   text: 'Step ${index + 1}',
//                                                   textColor:
//                                                       const Color.fromRGBO(
//                                                           156, 162, 170, 1),
//                                                 ),
//                                                 Image.asset(
//                                                     'assets/icons/account.png'),
//                                                 const CustomText(
//                                                   text: 'name',
//                                                   textColor: Color.fromRGBO(
//                                                       156, 162, 170, 1),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       10.horizontalSpace,
//                                       Expanded(
//                                         flex: 3,
//                                         child: Container(
//                                           padding:
//                                               const EdgeInsets.only(top: 5),
//                                           child: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.end,
//                                             children: <Widget>[
//                                               ConstrainedBox(
//                                                 constraints: BoxConstraints(
//                                                     maxWidth:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             1.4),
//                                                 child: const CustomText(
//                                                   text:
//                                                       'Fill mobile phone number, download PalmPay',
//                                                   textColor: Color.fromRGBO(
//                                                       125, 35, 224, 1),
//                                                 ),
//                                               ),
//                                               ConstrainedBox(
//                                                 constraints: BoxConstraints(
//                                                     maxWidth:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             1.3),
//                                                 child: CustomText(
//                                                   text:
//                                                       'one inviter can only be associated with a mobile phone number.',
//                                                   size: 12.sp,
//                                                   textColor:
//                                                       const Color.fromRGBO(
//                                                           156, 162, 170, 1),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 );
//                               }),
//                         ],
//                       ),
//                       const Divider(),
//                       CustomText(
//                         text: 'Rules',
//                         size: 16.sp,
//                         textColor: const Color.fromRGBO(137, 137, 157, 1),
//                       ),
//                       const Divider(),
//                       // ... (Your existing code for the Rules text)
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: const Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               '1. Each round of activity is 7 days. When the activity expires, if the user\'s amount has reached the withdrawal threshold and has not been withdrawn, the reward amount will be automatically withdrawn;',
//                               style: TextStyle(
//                                 fontSize: 16.0,
//                                 color: const Color.fromRGBO(137, 137, 157, 1),
//                               ),
//                             ),
//                             SizedBox(height: 10.0),
//                             Text(
//                               '2. After the event expires, the reward amount will be reissued, and the relationship between the inviter and the invitee will be cleared;',
//                               style: TextStyle(
//                                 fontSize: 16.0,
//                                 color: const Color.fromRGBO(137, 137, 157, 1),
//                               ),
//                             ),
//                             SizedBox(height: 10.0),
//                             Text(
//                               '3. If the invitee participates in other registration activities at the same time after registration, the status in the activity will be marked as [Invalid], and the inviter will not be able to get rewards.',
//                               style: TextStyle(
//                                 fontSize: 16.0,
//                                 color: const Color.fromRGBO(137, 137, 157, 1),
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               10.verticalSpace,
//               const CustomTextButton(text: 'Refer and Earn'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:referral_task/common_ui/custom_span_text.dart';
import 'package:referral_task/common_ui/custom_text.dart';
import 'package:referral_task/common_ui/custom_text_button.dart';
import 'package:referral_task/custom_slider.dart';

class ReferScreen extends StatefulWidget {
  const ReferScreen({super.key});

  @override
  State<ReferScreen> createState() => _ReferScreenState();
}

class _ReferScreenState extends State<ReferScreen> {
  final ExpansionTileController controller = ExpansionTileController();
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 244, 244, 1),
      appBar: AppBar(
        toolbarHeight: 35.sp,
        backgroundColor: const Color.fromRGBO(246, 244, 244, 1),
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 80.0,
            toolbarHeight: 80.0,
            backgroundColor: const Color.fromRGBO(243, 243, 243, 1),
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(horizontal: 16.sp),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Refer & Earn',
                    size: 20.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.redAccent,
                      ),
                      10.horizontalSpace,
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 1.29,
                        ),
                        child: Text(
                          '${'xxxxxxxxxxxxxxxxxxxxxxx'} got ${'xxx'}(money) just now',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color.fromRGBO(125, 35, 224, 1),
                          ),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                                child: CustomText(
                                  text: "My Coins",
                                  size: 18.sp,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8.sp),
                                    child: const CustomText(
                                      text: 'Withdraw',
                                      textColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const CustomSliderWithIcons(),
                          Column(
                            children: [
                              const CustomSpanText(
                                normalText: 'Invite 3 new users to get ',
                                boldText: 'N500',
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                                child: const Divider(),
                              ),
                              const CustomSpanText(
                                  normalText: 'Cash will expire in ',
                                  boldText: '6Day 13h 59min 34s')
                            ],
                          ),
                          const CustomTextButton(text: 'Invite'),
                        ],
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    // "How to Earn" container
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(243, 243, 243, 1),
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.1,
                        ),
                      ],
                    ),
                    child: Theme(
                      data: ThemeData(
                        dividerColor: Colors.transparent,
                      ),
                      child: Column(
                        children: [
                          ExpansionTile(
                            onExpansionChanged: (value) {
                              setState(() {
                                isExpanded = value;
                              });
                            },
                            trailing: Icon(
                              isExpanded
                                  ? xFontAwesomeIcons.angleDown
                                  : xFontAwesomeIcons.angleUp,
                              color: const Color.fromRGBO(125, 35, 224, 1),
                            ),
                            title: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.sp, vertical: 4.sp),
                              child: CustomText(
                                text: "How To Earn",
                                size: 18.sp,
                                textColor:
                                    const Color.fromRGBO(125, 35, 224, 1),
                              ),
                            ),
                            children: [
                              ListView.builder(
                                itemCount: 4,
                                shrinkWrap: true,
                                primary: false,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.sp, vertical: 4.sp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  offset: Offset(0.0, 1.0),
                                                  blurRadius: 1.0,
                                                ),
                                              ],
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 4.sp),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomText(
                                                    text: 'Step ${index + 1}',
                                                    textColor:
                                                        const Color.fromRGBO(
                                                            156, 162, 170, 1),
                                                  ),
                                                  Image.asset(
                                                      'assets/icons/account.png'),
                                                  const CustomText(
                                                    text: 'name',
                                                    textColor: Color.fromRGBO(
                                                        156, 162, 170, 1),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        10.horizontalSpace,
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                ConstrainedBox(
                                                  constraints: BoxConstraints(
                                                      maxWidth:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              1.4),
                                                  child: const CustomText(
                                                    text:
                                                        'Fill mobile phone number, download PalmPay',
                                                    textColor: Color.fromRGBO(
                                                        125, 35, 224, 1),
                                                  ),
                                                ),
                                                ConstrainedBox(
                                                  constraints: BoxConstraints(
                                                      maxWidth:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              1.3),
                                                  child: CustomText(
                                                    text:
                                                        'one inviter can only be associated with a mobile phone number.',
                                                    size: 12.sp,
                                                    textColor:
                                                        const Color.fromRGBO(
                                                            156, 162, 170, 1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const Divider(),
                          CustomText(
                            text: 'Rules',
                            size: 16.sp,
                            textColor: const Color.fromRGBO(137, 137, 157, 1),
                          ),
                          const Divider(),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1. Each round of activity is 7 days. When the activity expires, if the user\'s amount has reached the withdrawal threshold and has not been withdrawn, the reward amount will be automatically withdrawn;',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(137, 137, 157, 1),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  '2. After the event expires, the reward amount will be reissued, and the relationship between the inviter and the invitee will be cleared;',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(137, 137, 157, 1),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  '3. If the invitee participates in other registration activities at the same time after registration, the status in the activity will be marked as [Invalid], and the inviter will not be able to get rewards.',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(137, 137, 157, 1),
                                  ),
                                ),
                              ],
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
      bottomNavigationBar: const BottomAppBar(
        child: CustomTextButton(text: 'Refer and Earn'),
      ),
    );
  }
}
