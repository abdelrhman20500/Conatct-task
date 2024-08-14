import 'package:contact/widget/contact_item.dart';
import 'package:contact/widget/custom_bottom.dart';
import 'package:contact/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});
 static const String routeName= "ContactScreen";

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  int numberOfVisibleItem=0;
  ContactItem contactItem1= ContactItem();
  ContactItem contactItem2= ContactItem();
  ContactItem contactItem3= ContactItem();

  @override
  Widget build(BuildContext context) {



    return Container(
      color: Colors.grey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Contact Screen", style: TextStyle(fontSize: 28),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CustomTextField(
                  controller: nameController,
                  hintText: "Enter your Name Here", icon: Icons.edit),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              CustomTextField(
                  controller: phoneController,
                  hintText: "Enter your Number Here", icon: Icons.phone),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomBottom(text: "Add", onPressed: addItem, color: Colors.blue,),
                  CustomBottom(text: "delete", onPressed: deleteItem, color: Colors.red,)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              contactItem1,
              contactItem2,
              contactItem3

            ],
          ),
        ),
      ),
    );
  }
  void addItem()
  {
    if(numberOfVisibleItem==0)
      {
        contactItem1 =ContactItem(name: nameController.text,
          phone: phoneController.text,isVisible: true,);
        numberOfVisibleItem++;
      }else if(numberOfVisibleItem==1){
      contactItem2= ContactItem(name: nameController.text,
        phone: phoneController.text, isVisible: true,);
      numberOfVisibleItem++;
      setState(() {});
    }
    else if(numberOfVisibleItem==2)
      {
        contactItem3= ContactItem(name: nameController.text,
          phone: phoneController.text, isVisible: true,);
        numberOfVisibleItem++;
        setState(() {});
      }
  }
  void deleteItem()
  {

    if(numberOfVisibleItem==1)
    {
      contactItem1 =ContactItem(name: nameController.text,
        phone: phoneController.text,isVisible: false,);
      numberOfVisibleItem--;
    }else if(numberOfVisibleItem==2){
      contactItem2= ContactItem(name: nameController.text,
        phone: phoneController.text, isVisible: false,);
      numberOfVisibleItem--;
      setState(() {});
    }
    else if(numberOfVisibleItem==3)
    {
      contactItem3= ContactItem(name: nameController.text,
        phone: phoneController.text, isVisible: false,);
      numberOfVisibleItem--;
      setState(() {});
    }
  }
}


