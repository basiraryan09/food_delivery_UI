import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/colors/colors.dart';
import '../../widgets/custom_app_bar.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int _selectedValue = 0;
  int _selectedValue2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appFvtScreenBG,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            const CustomAppBar(),
            SizedBox(height: 40.h,),
            Text('Payment Method', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),),
            SizedBox(height: 30.h,),
            // --Payment Method Card
            Center(
              child: Container(
                width: 315.w,
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    // --Radio Button
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                            child: Radio(
                              activeColor: appMAinColor,
                              value: 0,
                              groupValue: _selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              },
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              fillColor: MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.selected)) {
                                  return appMAinColor;
                                } else {
                                  return Colors.transparent;
                                }
                              }),
                            ),
                          ),
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: appMAinColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(Icons.credit_card_outlined, color: Colors.white,size: 24,),
                          ),
                          const SizedBox(width: 10,),
                          Text(
                            'Card',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: _selectedValue == 0 ? FontWeight.bold : FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                    ),
                    // --Divider
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Divider(
                      //  thickness: 1,
                        color: appMAinColor,
                      ),
                    ),
                    // --RAdio Button
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Radio(
                            activeColor: appMAinColor,
                            value: 1,
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value!;
                              });
                            },
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            fillColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return appMAinColor;
                              } else {
                                return Colors.transparent;
                              }
                            }),
                          ),
                        ),
                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: appMAinColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.payments, color: Colors.white,size: 24,),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          'Cash',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: _selectedValue == 1 ? FontWeight.bold : FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            Text('Shipping Method', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),),
            SizedBox(height: 30.h,),
            // --Shipping Method Card
            Center(
              child: Container(
                width: 312.w,
                height: 128.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Radio(
                            activeColor: appMAinColor,
                            value: 0,
                            groupValue: _selectedValue2,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue2 = value!;
                              });
                            },
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            fillColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return appMAinColor;
                              } else {
                                return Colors.transparent;
                              }
                            }),
                          ),
                        ),
                        Text(
                          'home delivery',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: _selectedValue2 == 0 ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Divider(
                       // thickness: 1,
                        color: appMAinColor,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Radio(
                            activeColor: appMAinColor,
                            value: 1,
                            groupValue: _selectedValue2,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue2 = value!;
                              });
                            },
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            fillColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return appMAinColor;
                              } else {
                                return Colors.transparent;
                              }
                            }),
                          ),
                        ),
                         Text('With myself', style: TextStyle(fontSize: 17,
                          fontWeight: _selectedValue2 == 1 ? FontWeight.bold : FontWeight.normal,
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 200.h,),
            // --Order Button
            Center(
              child: SizedBox(
                height: 70.h,
                width: 314.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.h)),
                      backgroundColor: appMAinColor,
                      elevation: 0,
                    ),
                    onPressed: (){}, child: const Text('Order',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
