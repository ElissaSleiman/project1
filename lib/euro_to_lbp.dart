import 'package:flutter/material.dart';

class EuroToLbp extends StatefulWidget {
  const EuroToLbp({super.key});

  @override
  State<EuroToLbp> createState() => _EuroToLbpState();
}

class _EuroToLbpState extends State<EuroToLbp> {
  TextEditingController euroController=TextEditingController();
  double lbp=0.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:const Text('Euro To LBP Converter'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            TextField(
              controller: euroController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Euro need to convert',
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

            ElevatedButton(
                onPressed: (){
                  setState(() {
                    lbp=double.parse(euroController.text) * 16389.87;
                  });
                },
                child: const Text("Convert")),

            const SizedBox(
              height: 30.0,
            ),

            Text(
              """
Euro:$lbp LBP""",
              style:const TextStyle(
                  fontSize: 30.0
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
