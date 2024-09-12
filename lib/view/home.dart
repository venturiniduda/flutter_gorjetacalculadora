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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular Gorgeja'),
        titleTextStyle: TextStyle(),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextFormField(
                  controller: txtVlrConta,
                  decoration: InputDecoration(
                    hintText: 'Valor da Conta',
                  ),
                ),
                TextFormField(
                  controller: txtPGorjeta,
                  decoration: InputDecoration(
                    hintText: 'Porcentagem da gorjeta',
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(50, 40),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    // calculo gorjeta aqui
                    if (arredondar == false) {
                      // arredondar aqui
                    }
                  },
                  child: Text('calcular'),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
