import 'package:bmi_calculator_2/pages/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderWeightValue = 50.0;
  double sliderHeightValue = 1.2;
  double result = 0.0;
  String f = '';
  String msgResultt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Weight',
                  style: TextStyle(fontSize: 30, color: Color(0xff329ba8),),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${sliderWeightValue.round().toString()} KG',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Slider(
                    min: 20,
                    max: 150,
                    divisions: 130,
                    label: sliderWeightValue.round().toString(),
                    value: sliderWeightValue,
                    onChanged: (value) {
                      setState(() {
                        sliderWeightValue = value;
                        calculation();
                        // msgResult();
                      });
                    }),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Height',
                  style: TextStyle(fontSize: 30, color: Color(0xff329ba8),),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${sliderHeightValue.toStringAsFixed(2).toString()} m',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Slider(
                    min: 1.2,
                    max: 2.2,
                    divisions: 100,
                    label: sliderHeightValue.toStringAsFixed(2).toString(),
                    value: sliderHeightValue,
                    onChanged: (value) {
                      setState(() {
                        sliderHeightValue = value;
                        calculation();
                        // msgResult();
                      });
                    }),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 140,
                  width: 140,
                  child: Center(
                    child: Text(
                      '$f',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(200),
                    ),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                if (result < 16)
                  Text(
                    'Underweight(ST)',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  )
                else if (result > 16 && result < 16.9)
                  Text(
                    'Underweight(MT)',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  )
                else if (result > 17.0 && result < 18.4)
                  Text(
                    'Underweight(MiT)',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  )
                else if (result > 18.5 && result < 24.9)
                  Text(
                    'Normal',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  )
                else if (result > 25 && result < 29.9)
                  Text(
                    'Overweight(PO)',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  )
                else if (result > 30 && result < 34.9)
                  Text(
                    'Overweight(Class 1)',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  )
                else if (result > 35.0 && result < 39.9)
                  Text(
                    'Overweight(Class 2)',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  )
                else if (result > 40)
                  Text(
                    'Overweight(Class 3)',
                    style: TextStyle(fontSize: 25, color: Colors.blue),
                  )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0.0, 20, 20.0),
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                    context, ResultPage.routeName,
                    arguments: result),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'View Result',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              style: ButtonStyle(
                shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side: BorderSide(color: Colors.red)
                    )
                ),
                backgroundColor: MaterialStateProperty.all(Color(0xff329ba8),),
              )


            ),
          )
        ],
      ),
    );
  }

  calculation() {
    result = (sliderWeightValue / (sliderHeightValue * sliderHeightValue));
    f = result.toStringAsFixed(2);
  }
}
