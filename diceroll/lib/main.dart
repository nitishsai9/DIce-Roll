import 'package:flutter/material.dart';
import 'dart:math';
void main()
{
  runApp(
  MaterialApp(
   home: Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
      title: Center(child: Text('Dice Roll')),
       backgroundColor: Colors.black,),
       body: DiceBody(),  ),),   
       );

}
class DiceBody extends StatefulWidget {
  @override
  _DiceBodyState createState() => _DiceBodyState();
}

class _DiceBodyState extends State<DiceBody> {
  int left=1,right=1;
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
       children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  left=Random().nextInt(5)+1;
                });
      
              },
              child: Image.asset('img/$left.png'),
             splashColor: Colors.red,
             
              ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  right=Random().nextInt(5)+1;
                });
              },
              child: Image.asset('img/$right.png'),
              splashColor: Colors.blue,
              ),
          ),
        ],
        
      ),
    );
  }
}