import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
   ContactItem({super.key,  this.name,  this.phone,  this.isVisible});
 String? name= "";
 String? phone= "";
 bool? isVisible =false;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible??false,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22)
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name : $name", style: const TextStyle(fontSize: 20),),
            Text("Phone : $phone",style: const TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
