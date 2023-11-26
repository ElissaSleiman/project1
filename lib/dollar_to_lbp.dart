import 'package:flutter/material.dart';

class DollarToLbp extends StatefulWidget {
  const DollarToLbp({super.key});

  @override
  State<DollarToLbp> createState() => _DollarToLbpState();
}

class _DollarToLbpState extends State<DollarToLbp> {
  TextEditingController dollarController=TextEditingController();
  double lbp=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Dollar To LBP Converter '),

      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              keyboardType: TextInputType.number,
              controller:dollarController ,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Dollar  to convert'
              ),

            ),

            const SizedBox(height: 30.0,),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  lbp=double.parse(dollarController.text) * 89500;
                });
              },
              child: const Text("Convert"),
            ),

            const SizedBox(
              height: 30.0,
            ),

            Text("Result : $lbp LBP",
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
