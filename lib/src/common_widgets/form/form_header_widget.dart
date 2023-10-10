import 'package:flutter/material.dart';
import 'package:login_app/src/constants/text_strings.dart';

import '../../constants/image_strings.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({super.key,
    required this.title,
    required this.image,
    required this.subtitle,
    required this.imgHeight,
    this.crossAxisAlignment=CrossAxisAlignment.start,
    this.heightBetween,
    this.textAlign

  });
  final String title,subtitle,image;
  final double? heightBetween;
  final num imgHeight;
  final CrossAxisAlignment crossAxisAlignment ;
  final TextAlign? textAlign;




  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Center(child: Image(image: AssetImage(image), height: size.height * imgHeight,)),
        SizedBox(
          height:heightBetween ,
        ),
        Text(title,textAlign: textAlign, style: TextStyle(color: Colors.black,fontSize: 34,fontWeight: FontWeight.bold)),
        Text(subtitle,textAlign:textAlign ,  style: Theme.of(context).textTheme.titleMedium,),
      ],
    );
  }
}
