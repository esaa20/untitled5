import 'package:flutter/material.dart';
import 'package:untitled5/sreens/home_screen.dart';
class Images extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text("LED"),

          ],
        )
      ],
    );
  }
}

class BedRoom extends StatelessWidget {
int? ledBed ;
BedRoom({
  required this.ledBed,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Column(
            children: [
              CardDevice(name: 'Light', ledbed: ledBed, iconnn: Icons.light_outlined,),
              SizedBox(height: 10,),
             // CardDevice()
            ],
          ),
          SizedBox(width: 15,),
          Column(
            children: [
              //CardDevice(),
              SizedBox(height: 10,),
              //CardDevice()
            ],
          ),
        ],
      ),
    );
  }
}


class CardDevice extends StatelessWidget {
  String name ;
  IconData iconnn ;
  int? ledbed ;
  CardDevice({
    required this.name,
    required this.ledbed,
    required this.iconnn
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      height: 110,
      width: 170,
      decoration: BoxDecoration(
        color: Color(0xff142A37),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(iconnn , size: 38, color: Colors.white,),
              Text(name , style: TextStyle(fontSize: 22, color: Colors.white),)
            ],
          ),
          Column(
            children: [
              CircleAvatar(backgroundColor:ledbed == 1? Colors.green:Colors.grey, radius: 8,)
            ],
          )
        ],
      ),
    );
  }
}
