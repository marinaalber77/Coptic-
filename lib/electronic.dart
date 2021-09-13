import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class electronic extends StatefulWidget {
  const electronic({Key? key}) : super(key: key);

  @override
  _electronicState createState() => _electronicState();
}

class _electronicState extends State<electronic> {
  Color colorApp=Color.fromRGBO(59, 121, 55, 1);
  int count=0;
  void _incrementCount(){
    setState(() {
      count++;
    });
  }
  void _resetCount(){
    setState(() {
      count=0;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count",style:Theme.of(context).textTheme.headline3
            ),
            SizedBox(height: 15),
            FlatButton(onPressed: (){
              _incrementCount();
            }, color: Colors.black,
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                height: 45,
                child: Text("Count",
                  style:TextStyle(
                    color: colorApp,
                    fontSize: 16,
                  ) ,)),
            SizedBox(height: 10),
            FlatButton(onPressed: (){
              _resetCount();
            }, color: Colors.black,
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                height: 45,
                child: Text("Restart",
                  style:TextStyle(
                    color: colorApp,
                    fontSize: 16,
                  ) ,)),
          ],
        ),
      ),
    );
  }
}
