import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Sucursales {
  int id_sucursal;
  String nombre;
  String curp;

  Sucursales(this.id_sucursal, this.nombre, this.curp);
}

class MyApp extends StatelessWidget {
  final List<Sucursales> sucursales = [
    Sucursales(1, 'Sucursal A', 'CURP001'),
    Sucursales(2, 'Sucursal B', 'CURP002'),
    Sucursales(3, 'Sucursal C', 'CURP003'),
    Sucursales(4, 'Sucursal D', 'CURP004'), // Nueva fila 1
    Sucursales(5, 'Sucursal E', 'CURP005'), // Nueva fila 2
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sucursales',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue, // Color del AppBar
          elevation: 10,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade100, Colors.lightBlue.shade50],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: sucursales.map((sucursal) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // ID
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ID: ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900, // Atributo oscuro
                              ),
                            ),
                            Text(
                              '${sucursal.id_sucursal}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue.shade600, // Valor más claro
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10), // Separador
                        // Nombre
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nombre: ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900, // Atributo oscuro
                              ),
                            ),
                            Text(
                              sucursal.nombre,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue.shade600, // Valor más claro
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10), // Separador
                        // CURP
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CURP: ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900, // Atributo oscuro
                              ),
                            ),
                            Text(
                              sucursal.curp,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue.shade600, // Valor más claro
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
