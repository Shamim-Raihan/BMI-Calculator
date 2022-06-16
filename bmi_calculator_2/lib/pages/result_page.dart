import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {

  static const String routeName = '/result';

  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  late double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result'),),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('BMI', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                    Text('category', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: result<16? Colors.green : Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('under weight(ST)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text('<16', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: result>16 && result<16.9? Colors.green : Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('under weight(MT)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text('16<BMI<16.9', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: result>17 && result<18.4? Colors.green : Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('under weight(MiT)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text('17<BMI<18.4', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),


              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: result>18.5 && result<24.9? Colors.green : Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Normal', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text('18.5<BMI<24.9', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: result>25 && result<29.9? Colors.green : Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Over Weight(PO)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text('25<BMI<29.9', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: result>30 && result<34.9? Colors.green : Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Over Weight(Class 1)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text('30<BMI<34.9', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: result>35 && result<39.9? Colors.green : Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Over Weight(Class 2)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text('35<BMI<39.9', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                color: result>40? Colors.green : Color(0xffDBD8D8FF),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Over Weight(Class 3)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                    Text('40<BMI', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                  ],
                ),
              ),

            ],
          ),
        ),
    );
  }

  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as double;
    super.didChangeDependencies();
  }
}
