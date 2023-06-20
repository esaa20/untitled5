import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {

  @override
  _HomeScreensState createState() => _HomeScreensState();

}

class _HomeScreensState extends State<HomeScreens> {
  String  selectIndex = "0";

  Query dbRef = FirebaseDatabase.instance.ref().child('ESP');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff091C27),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.list_outlined , size: 30,color: Color(0xffEE7F39),) ) ,
        actions: [CircleAvatar()],
      ),
      body:Container(
        height: double.infinity,
        child: FirebaseAnimatedList(
          query: dbRef,
          itemBuilder: (BuildContext context , DataSnapshot snapshot , Animation<double> animation, int index){
            Map device = snapshot.value as Map ;
            //device['key'] = snapshot.key ;
            return Container(
             // child: Text(device['LCD']),
            );
          },
        ),
      )
    );
  }
}
