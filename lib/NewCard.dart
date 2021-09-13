import 'package:flutter/material.dart';
class NewCard extends StatefulWidget {
  String textPrayers;
  int countPrayers;

  NewCard(this.textPrayers, this.countPrayers);

  

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  Color colorApp=Color.fromRGBO(59, 121, 55, 1);
  Color backGroundColor= Color(0xff353535);
  Color redColor= Color(0xffb30000);
  Color greenColor =Color.fromRGBO(59, 121, 55, 1);
  int count=3;


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )
      ),

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("${widget.textPrayers}",
              style: TextStyle(
                color: colorApp,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
            onPressed: (){
              setState(() {
                if(widget.countPrayers<= widget.countPrayers && widget.countPrayers>=1){
                widget.countPrayers--;
                }
              });
            },
            color: (widget.countPrayers== 0)? redColor:greenColor,
            child: Text("${widget.countPrayers}"),
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
            height: 45,
            minWidth: double.infinity,
          )
        ],
      ),
    );
  }
}
