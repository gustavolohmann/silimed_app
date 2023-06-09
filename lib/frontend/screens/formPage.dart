import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _MyFormPage();
}

class _MyFormPage extends State<FormPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[100],
        title: Text('Silimed'),
      ),
      body: Center(
        child:Column(
          children: [
            Expanded(
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                       child:TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Entre com seu nome:',
                        ),
                       ),
                      ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                      child:TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Entre com seu senha:',
                        ),
                      ),
                    ),
                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                       child:Container(
                         width: MediaQuery.of(context).size.width, // Define a largura como infinita para ocupar todo o espaço disponível
                         child: ElevatedButton(
                           style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                             shape: MaterialStateProperty.all<OutlinedBorder>(
                               RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                             ),
                           ),
                           onPressed: () {
                             // Lógica para processar o formulário
                           },
                           child: const Text(
                             'Enviar',
                             style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.bold,
                               color: Colors.grey,
                              ),
                           ),
                         ),
                       ),
                   ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
