import 'package:contacts_book/const/color.dart';
import 'package:contacts_book/pages/directory_detail.dart';
import 'package:contacts_book/widget/AppBar.dart';
import 'package:contacts_book/widget/pembatas.dart';
import 'package:flutter/material.dart';

class DirectoryContact extends StatelessWidget {
  const DirectoryContact({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> history = [
      {
        "Name": "Jame Michael",
        "last": 12,
        "image": null,
        "initial": "JM",
      },
      {
        "Name": "Cecilia Hendrawan",
        "last": 42,
        "image":
            "https://fastly.picsum.photos/id/519/200/200.jpg?hmac=7MwcBjyXrRX5GB6GuDATVm_6MFDRmZaSK7r5-jqDNS0",
        "initial": "CH",
      },
      {
        "Name": "Marry Riana",
        "last": 10,
        "image":
            "https://fastly.picsum.photos/id/173/200/200.jpg?hmac=avUVgEVHNuQ4yZJQhCWlX3wpnR7d_fGOKvwZcDMLM0I",
        "initial": "MR",
      },
      {
        "Name": "Nicholas Saputra",
        "last": 10,
        "image":
            "https://fastly.picsum.photos/id/690/200/200.jpg?hmac=DN6slU20ktSeMSXbM6U8BG_YHhebxEl3S70qNurkzk8",
        "initial": "NS",
      },
    ];

    final List<Map<String, dynamic>> contacts = [
      {
        "nama": "Aron Ashluxe",
        "no": "(907) 555-0101",
        "image": null,
        "initial": "AA",
      },
      {
        "nama": "Annete Black",
        "no": "(907) 555-0101",
        "image":
            "https://fastly.picsum.photos/id/838/200/200.jpg?hmac=a2ZUJPqhEFH-OzhHFaKdtDdV2XnIE7t1tP2iXnP5Fj0",
        "initial": "AB",
      },
      {
        "nama": "Albert Cooper",
        "no": "(907) 555-0101",
        "image": null,
        "initial": "AC",
      },
      {
        "nama": "Albert Flores",
        "no": "(907) 555-0101",
        "image":
            "https://fastly.picsum.photos/id/452/200/200.jpg?hmac=f5vORXpRW2GF7jaYrCkzX3EwDowO7OXgUaVYM2NNRXY",
        "initial": "AF",
      },
      {
        "nama": "Arlene McCoy",
        "no": "(907) 555-0101",
        "image": null,
        "initial": "AM",
      },
    ];
    final List abjad = [
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "J",
      "K",
      "L",
      "M",
      "N",
      "O",
      "P",
      "Q",
      "R",
      "S",
      "T",
      "U",
      "V",
      "W",
      "X",
      "Y",
      "Z",
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBars(directory: true, text: "Contacts"),
            Flexible(
              child: Container(
                // padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: greyPrimary,
                            borderRadius: BorderRadius.circular(15)),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: 50,
                        child: const TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontFamily: 'Sofia',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      height: 155,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: history.map((data) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 103,
                            child: Column(
                              children: [
                                Container(
                                  height: 103,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                    image: (data['image'] != null)
                                        ? DecorationImage(
                                            image: NetworkImage(data['image']),
                                            fit: BoxFit.cover,
                                          )
                                        : null,
                                  ),
                                  child: (data['image'] == null)
                                      ? Center(
                                          child: Text(
                                            data['initial'],
                                            style: const TextStyle(
                                              letterSpacing: 2.0,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Sofia',
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      : Container(),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${data['Name']}",
                                  style: const TextStyle(
                                    fontFamily: 'Sofia',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${data['last']} Mins ago",
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Pembatas(text: "A"),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            children: contacts
                                .map((e) => InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              DirectpryDetail(),
                                        ));
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      right: 10),
                                                  width: 60,
                                                  height: 60,
                                                  decoration: BoxDecoration(
                                                    color: (e['image'] == null)
                                                        ? Colors.black38
                                                        : null,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    image: (e['image'] != null)
                                                        ? DecorationImage(
                                                            image: NetworkImage(
                                                                e['image']),
                                                            fit: BoxFit.cover,
                                                          )
                                                        : null,
                                                  ),
                                                  child: (e['image'] == null)
                                                      ? Center(
                                                          child: Text(
                                                            e['initial'],
                                                            style:
                                                                const TextStyle(
                                                              letterSpacing:
                                                                  2.0,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontFamily:
                                                                  'Sofia',
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        )
                                                      : Container(),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("${e['nama']}"),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text("${e['no']}"),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))
                                .toList(),
                          )),
                          Column(
                            children: abjad
                                .map((e) => Container(
                                      margin: const EdgeInsets.only(bottom: 3),
                                      child: Text((e)),
                                    ))
                                .toList(),
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
    );
  }
}
