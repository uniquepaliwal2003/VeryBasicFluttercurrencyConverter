import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({Key? key}) : super(key: key);

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  @override
  void initState() {
    super.initState();
  }
    final TextEditingController textEditingController = TextEditingController(); 
    double result = 0 ;
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 0, 49),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 158, 0, 49),
        elevation: 0,
        centerTitle: true,
        title: const Text(
                "Money Converter",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "₹${result.toStringAsFixed(2)}",
              style:const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Center(
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                  decoration:const InputDecoration(
                    hintText: "Please enter the amount in USD",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.monetization_on,
                      color: Color.fromRGBO(50, 55, 59, 1),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 175, 175, 175),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(5),
                        right: Radius.circular(5)
                      ),
                      borderSide: BorderSide(
                        width: 0.0,
                        style: BorderStyle.none,
                      ),
                      gapPadding: 2,
                    ),
                  ),
                  keyboardType:const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                    setState(() {
                    result =  double.parse(textEditingController.text)*81 ;         
                    });
                }, 
                // style: ButtonStyle( 
                //   backgroundColor:const  MaterialStatePropertyAll(Colors.black),
                //   minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 50)),
                //   shape: MaterialStatePropertyAll( RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
                // ),
                style: TextButton.styleFrom(
                  backgroundColor:Colors.black,
                  minimumSize: const Size(double.infinity,50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child: const Text("Convert" , style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),),
              ),
            )
          ], 
        ),
      ),
    );
  }
}

