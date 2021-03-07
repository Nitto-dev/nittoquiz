import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {

  final String title;
  final String subtitle;
  final Function page;


  CustomList(this.title,this.subtitle,this.page);


  @override
  Widget build(BuildContext context)=>
     GestureDetector(
      onTap:()=>Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page()),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:8.0,left:8.0,right:8.0),
        child: Card(
          color: Colors.white,
          elevation: 2.0,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              //if(assetImage!=null)Image.asset(assetImage),
               ListTile(
                //leading: Icon(Icons.arrow_drop_down_circle),
                title: Text(title,style: TextStyle(color: Colors.black.withOpacity(0.6)),),
                subtitle: Text(
                  subtitle,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              //if(descriptionText!=null)
              //   Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Text(
              //     descriptionText,
              //     style: TextStyle(color: Colors.black.withOpacity(0.6)),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

