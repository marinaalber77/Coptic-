import 'package:coptic/prayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'BottomSheatHelper.dart';
import 'electronic.dart';

class tabScreen extends StatefulWidget {
  const tabScreen({Key? key}) : super(key: key);

  @override
  _tabScreenState createState() => _tabScreenState();
}

class _tabScreenState extends State<tabScreen>
 with SingleTickerProviderStateMixin {
  final tabList = ['Electronic Counter', 'Prayers'];
  late TabController _tabController;
  Color colorApp=Color.fromRGBO(59, 121, 55, 1);
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        centerTitle: true,
        title: Text("Jesus",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 27,
            color: colorApp,

          ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            IconButton(onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext Context){
                    return BottomSheatHelper();
                  });
              },
             icon: Icon(Icons.info_outline,color: colorApp,size: 35,)),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          indicator: PointTabIndicator(
            position: PointTabIndicatorPosition.bottom,
            color: colorApp,
            insets: EdgeInsets.only(bottom: 6),
          ),
          labelColor: colorApp,
          labelStyle: TextStyle(fontSize: 16,
          fontWeight: FontWeight.w600,
          ),
          tabs: tabList.map((item) {
            return Tab(
              text: item,
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          electronic(),
          prayersScreen(),
        ],
      ),
    );
  }
}
