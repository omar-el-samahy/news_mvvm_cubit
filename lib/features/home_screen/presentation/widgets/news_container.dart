import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(7.50),
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: NetworkImage(""), fit: BoxFit.fill),
            ),
          ),
        ),
        Text(
          "",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          "",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
