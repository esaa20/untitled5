import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   bool ledon = true;
  int? sensor ;

  final dataBase = FirebaseDatabase.instance.reference();

  _HomeState() {
    DatabaseReference starCountRef =
    FirebaseDatabase.instance.ref('ESP');
    starCountRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print(data);
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Smart Home'),
            ElevatedButton(
                onPressed: (){
                  ledon=!ledon;
                  FirebaseDatabase.instance
                      .ref('ESP/LED')
                      .set(ledon?1:0)
                      .then((_) {
                    // Data saved successfully!
                  })
                      .catchError((error) {
                    // The write failed...
                  });

                  setState(() {
                  });

            },
                child: ledon?Text('LED OFF'):Text('LED ON')),
            Text('Sensor'),

          ],
        ),
      )
    );
  }

}

