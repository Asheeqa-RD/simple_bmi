import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {

  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double hvalue=0;
  double wvalue=0;
  double result=0;
  void calculator(){
    hvalue=double.parse(height.text);
    wvalue=double.parse(weight.text);
    result=wvalue/(hvalue*hvalue);
    print(result);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          TextField(
            controller: weight,
            decoration: InputDecoration(
              filled: true,
              fillColor:Colors.blue.withOpacity(0.3),
              hintStyle: TextStyle(color: Colors.black),
              hintText: "Enter your weight",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50),
            ),
          ),
          ),
          SizedBox(height: 30,),
          TextField(
             controller: height,
            decoration: InputDecoration(
              filled: true,
              fillColor:Colors.blue.withOpacity(0.3),
              hintStyle: TextStyle(color: Colors.black),
              hintText: "Enter your height",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(50),

              ),
            ),
          ),
          SizedBox(height: 50,),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.black.withOpacity(0.5),
              fixedSize: Size(80, 50),
            ),
            onPressed: (){
              calculator();
              setState((){});
            },
            child: Text('Calculate',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          SizedBox(height: 70,),
          Text('your BMI is $result',
          style: TextStyle(
            fontSize: 40,
              fontWeight:FontWeight.bold,

          ),),
        ],
      ),
    );
  }
}
