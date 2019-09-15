import 'package:flutter/material.dart';
import 'channel/MyBasicMessageChannel.dart';
import 'channel/MyEventChannel.dart';
import 'channel/MyMethodChannel.dart';

void main(){
  runApp(MaterialApp(
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('与原生交互'),),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('BasicMessageChannel'),//用于传递字符串和半结构化的信息
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyBasicMessageChannel()));
              },
            ),
            SizedBox(height: 25,),
            RaisedButton(
              child: Text('MethodChannel'),//用于传递方法调用（method invocation）
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyMethodChannel()));
              },
            ),
            SizedBox(height: 25,),
            RaisedButton(
              child: Text('EventChannel'),//用于数据流（event streams）的通信
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyEventChannel()));
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyEventChannel())).then((value){
                //   print('_result' + value);
                // });
              },
            ),
            SizedBox(height: 25,),

          ],
        ),
      ),
    );
  }
}