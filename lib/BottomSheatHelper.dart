import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class BottomSheatHelper extends StatefulWidget {
  const BottomSheatHelper({Key? key}) : super(key: key);

  @override
  _BottomSheatHelperState createState() => _BottomSheatHelperState();
}

class _BottomSheatHelperState extends State<BottomSheatHelper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Help",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),),
                IconButton(onPressed: (){
                     Navigator.pop(context);
                }, icon: Icon(Icons.clear_sharp))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("This App help you to pray....",style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),),
          ),
        ],
      ),

    );
  }
}
