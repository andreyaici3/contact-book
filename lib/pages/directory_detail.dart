import 'package:contacts_book/widget/pembatas.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../const/color.dart';
import '../const/icon.dart';
import '../widget/AppBar.dart';
import '../widget/ButtonIcon.dart';
import 'package:flutter/material.dart';

class DirectpryDetail extends StatelessWidget {
  final List<Map<String, dynamic>> nomoor = [
    {
      "jenis": "Mobile",
      "nomor": "(907) 555-0101",
    }
  ];
  final String image =
      "https://fastly.picsum.photos/id/452/200/200.jpg?hmac=f5vORXpRW2GF7jaYrCkzX3EwDowO7OXgUaVYM2NNRXY";
  DirectpryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBars(
              directory: false,
              text: "",
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 104,
                      height: 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                        image: (image != "")
                            ? DecorationImage(
                                image: NetworkImage(image),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Albert Flores",
                      style: TextStyle(
                        fontFamily: "Sofia",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("(907) 555-0101"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonIcon(
                          color: greenPrimary,
                          svg: svgchat,
                        ),
                        ButtonIcon(
                          color: bluePrimary,
                          svg: svgcall,
                        ),
                        ButtonIcon(
                          color: red,
                          svg: svgvideo,
                        ),
                        ButtonIcon(
                          color: greyPlaceholder,
                          svg: svgmessage,
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      child: Pembatas(text: ""),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Mobile"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("(907) 555-0101"),
                                  ],
                                ),
                              ),
                              SvgPicture.asset(
                                svgchat,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                svgcall,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Home"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("(907) 555-0101"),
                                  ],
                                ),
                              ),
                              SvgPicture.asset(
                                svgchat,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                svgcall,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Home"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("(907) 555-0101"),
                                  ],
                                ),
                              ),
                              SvgPicture.asset(
                                svgvideo,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ButtonIcon(color: bluePrimary, svg: svgshare),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Share Location",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sofia',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ButtonIcon(color: greyPlaceholder, svg: svgbarcode),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Qr Code",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sofia',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ButtonIcon(color: greenPrimary, svg: svgsend),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Share Contact",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sofia',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
