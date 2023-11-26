import 'package:flutter/material.dart';

class LbpToDollar extends StatefulWidget {
  const LbpToDollar({super.key});

  @override
  State<LbpToDollar> createState() => _LbpToDollarState();
}

class _LbpToDollarState extends State<LbpToDollar> {
  TextEditingController lbpController=TextEditingController();
  double dollar=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("LBP To Dollar Converter"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.number,
              controller:lbpController ,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter LBP need to convert'
              ),

            ),


            const SizedBox(height: 20.0,),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  dollar=double.parse(lbpController.text) / 89500.0;
                });
              },
              child: const Text("Convert"),
            ),

            const SizedBox(
              height: 30.0,
            ),

            Text("Result : $dollar \$",
              style: const TextStyle(
                fontSize: 30.0,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
