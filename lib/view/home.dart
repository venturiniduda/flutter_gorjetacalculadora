// import 'dart:ffi';
// import 'dart:ui';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var txtVlrConta = TextEditingController();
  var txtPGorjeta = TextEditingController();
  bool arredondar = false;
  double totalConta = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular Gorjeta'),
        centerTitle: true,
        titleTextStyle: TextStyle(),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: txtVlrConta,
                decoration: InputDecoration(
                  hintText: 'Valor da Conta',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: txtPGorjeta,
                decoration: InputDecoration(
                  hintText: 'Porcentagem da gorjeta',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SwitchListTile(
                title: Text('Arredondar?'),
                value: arredondar,
                onChanged: (bool value) {
                  setState(() {
                    arredondar = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(35, 40),
                        textStyle: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        // calculo gorjeta:
                        totalConta = double.parse(txtVlrConta.text) +
                            (double.parse(txtVlrConta.text) *
                                (double.parse(txtPGorjeta.text) / 100));
                        if (arredondar == true) {
                          // arredondar:
                          totalConta = totalConta.roundToDouble();
                        }
                        setState(() {});
                      },
                      child: Text('calcular'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text('${totalConta.toStringAsFixed(2)}'),
            ],
          ),
        ),
      ),
    );
  }
}
