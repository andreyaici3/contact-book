import 'package:contacts_book/const/color.dart';
import 'package:flutter/material.dart';

class AppBars extends StatelessWidget {
  bool directory;
  String text;
  AppBars({
    required this.directory,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (directory == true)
              ? Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyPlaceholder,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: greyPlaceholder,
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                ),
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'Sofia',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bluePrimary,
            ),
            child: const Image(
              image: AssetImage("assets/icon/Edit.png"),
            ),
          ),
        ],
      ),
    );
  }
}
