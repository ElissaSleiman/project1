import 'package:flutter/material.dart';

class LbpToEuro extends StatefulWidget {
  const LbpToEuro({super.key});
  @override
  State<LbpToEuro> createState() => _LbpToEuroState();
}

class _LbpToEuroState extends State<LbpToEuro> {
  // ignore: non_constant_identifier_names
  TextEditingController LbpController=TextEditingController();
  double euro=0.0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('LBP To Euro Converter'),
      ),
      body:Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[

            TextField(
              controller:LbpController ,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter LBP need to convert',
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    euro=double.parse(LbpController.text)*0.000061;
                  });
                },
                child: const Text('Convert')
            ),

            const SizedBox(
              height: 30.0,
            ),

            Text("Result : $euro€",
              style: const TextStyle(
                fontSize: 30.0,
              ),

            ),

          ],
        ),
      ) ,
    );
  }
}



