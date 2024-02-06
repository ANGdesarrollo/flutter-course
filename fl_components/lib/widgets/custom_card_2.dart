import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {

  final String imageURL;
  final String? name;

  const CustomCard2({super.key, required this.imageURL, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageURL),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.contain,
          fadeInDuration: const Duration(milliseconds: 300)),

          if (name != null)
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            padding: const EdgeInsets.all(4),
            child: Text(name!)
            )
      ]),
    );
  }
}