import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
   ForgetPasswordBtnWidget({
    super.key, required this.title,
     required this.subTitle,
     required this.btnIcon,
     required this.onTap,
  });
  final String title, subTitle;
  final IconData btnIcon;
  final VoidCallback onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.grey.shade200,
        ),
        child:  Row(
          children: [
            Icon(btnIcon,size: 60,),
            SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: Theme.of(context).textTheme.headlineSmall,),
                Text(subTitle,style: Theme.of(context).textTheme.titleMedium,)
              ],
            )
          ],
        ),
      ),
    );
  }
}