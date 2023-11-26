import 'lbp_to_euro.dart';
import 'euro_to_lbp.dart';
import 'dollar_to_lbp.dart';
import 'lbp_to_dollar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: CurrencyConverter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Exchange",
        style: TextStyle(fontSize:30.0,
          color:Colors.white,

      ),
      ),
      centerTitle:true,
      backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const DollarToLbp())
                  );
                },
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  textStyle:const TextStyle(fontSize:30.0),
                  padding: const EdgeInsets.all(40.0),

                ),
                child: const Text(
                    'Dollar To LBP', style: TextStyle(fontSize: 18.0, color:Colors.white),),
            ),

            const SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const LbpToDollar())
                  );
                },
              style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  textStyle:const TextStyle(fontSize:30.0),
                  padding: const EdgeInsets.all(40.0),
              ),
                child: const Text(
                    'LBP To Dollar', style: TextStyle(fontSize: 18.0, color:Colors.white),),),

            const SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const LbpToEuro())
                );
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                textStyle:const TextStyle(fontSize:30.0),
                padding: const EdgeInsets.all(40.0),
              ),
              child: const Text(
                  "LBP To Euro", style: TextStyle(fontSize: 18.0 , color:Colors.white),
              ),),

            const SizedBox(
              height: 16.0,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const EuroToLbp())
                );
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                textStyle:const TextStyle(fontSize:30.0),
                padding: const EdgeInsets.all(40.0),
              ),
              child: const Text(
                  "Euro To LBP", style: TextStyle(fontSize: 18.0, color:Colors.white),),
            ),
          ],
        ),
      ),
    );
  }


}

