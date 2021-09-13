import 'package:coptic/NewCard.dart';
import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  Color colorApp=Color.fromRGBO(59, 121, 55, 1);
  Color backGroundColor= Color(0xff353535);
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: colorApp,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            NewCard("المجد للآب والابن والروح القدس الآن وكل أوان وإلى دهر الدهور آمي.",3),
            NewCard("أبانا الذي في السموات. ليتقدس اسمك. ليأت ملكوتك. لتكن مشيئتك",3),
            NewCard("فلنشكر صانع الخيرات الرحوم الله، أبا ربنا وإلهنا ومخلصنا يسوع المسيح،",7),
            NewCard("أيها السيد الإله ضابط الكل أبو ربنا وإلهنا ومخلصنا يسوع المسيح",4),
            NewCard("ارحمني يا الله كعظيم رحمتك، ومثل كثرة رأفتك تمحو إثمي",3),
            NewCard("اغسلني كثيرا من إثمي ومن خطيتي طهرني، لأني أنا عارف بإثمي وخطيتي أمامي في كل حين",3),
            NewCard("لأني هاأنذا بالإثم حبل بي، وبالخطايا ولدتني أمي",3),
            NewCard("لأنك لو آثرت الذبيحة لكنت الآن أعطي، ولكنك لا تسر بالمحرقات، فالذبيحة لله روح منسحق",3),

          ],
        ),
      ),
    );
  }
}
