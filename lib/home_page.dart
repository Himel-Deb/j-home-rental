import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/home_bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color(0xffFCFCF43),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset("assets/logo/logo_transparent.png"),
                      ),

                      SizedBox(
                        height: 18,
                        width: 18,
                        child: Icon(Icons.menu, color: Colors.white),
                      ),
                    ],
                  ),

                  SizedBox(height: 80),

                  Text(
                    "JHomes - Monthly Property Rental Solutions",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),

                  Text(
                    "Revolutionizing and disrupting the real estate experience in Nigeria by providing a seamless, technology-driven platform that bridges the gap between landlords, vendors and tenants",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),

                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                      child: Container(
                        width: double.infinity,
                        height: 413,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.1),
                          border: Border.all(
                            width: 1,
                            color: Color(0XFFFCFCF4).withValues(alpha: 0.2),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BoxFormText(
                              title: "Location",
                              subTitle: "Lagos, Nigeria",
                            ),
                            SizedBox(height: 24),

                            BoxFormText(title: "Type", subTitle: "Rent"),
                            SizedBox(height: 24),

                            BoxFormText(
                              title: "Budget",
                              subTitle: "₦ 200, 000 - ₦ 300, 000",
                            ),
                            SizedBox(height: 25),

                            RangeSlider(
                              values: const RangeValues(200000, 300000),
                              min: 0,
                              max: 500000,
                              activeColor: const Color(0xFF16A6A6),
                              inactiveColor: const Color(0xFF8052A8),
                              onChanged: (RangeValues values) {
                                // Update selected budget range
                              },
                            ),
                            SizedBox(height: 40),

                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: 42,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff045E69),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    "Search",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BoxFormText extends StatelessWidget {
  const BoxFormText({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8),

        Text(
          subTitle,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.4),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
