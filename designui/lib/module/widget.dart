import 'package:flutter/material.dart';

class CategoriyItem extends StatelessWidget {
  final String title;
  final String task;
  final String image;

  const CategoriyItem({
    Key? key,
    required this.title,
    required this.task,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 215,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                task,
                style: const TextStyle(fontSize: 14),
              ),
              const Spacer(),
              Image(
                image: AssetImage('images/$image'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
