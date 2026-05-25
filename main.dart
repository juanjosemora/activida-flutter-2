import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador de Puntos',
      home: ConfirmarAsistencia(),
    );
  }
}

class ContadorPuntos extends StatefulWidget {
  @override
  State<ContadorPuntos> createState() => _ContadorPuntosState();
}

class _ContadorPuntosState extends State<ContadorPuntos> {

  int puntos = 0;

  void sumar() {
    setState(() {
      puntos++;
    });
  }

  void restar() {
    setState(() {
      puntos--;
    });
  }

  void reiniciar() {
    setState(() {
      puntos = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de Puntos"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Puntaje Actual",
              style: TextStyle(fontSize: 28),
            ),

            SizedBox(height: 20),

            Text(
              "$puntos",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  onPressed: sumar,
                  child: Text("+"),
                ),

                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: restar,
                  child: Text("-"),
                ),

                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: reiniciar,
                  child: Text("Reiniciar"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}




class MensajesMotivacionales extends StatefulWidget {
  @override
  State<MensajesMotivacionales> createState() =>
      _MensajesMotivacionalesState();
}

class _MensajesMotivacionalesState
    extends State<MensajesMotivacionales> {

  List<String> mensajes = [
    "Sigue practicando",
    "Vas muy bien",
    "No te rindas",
    "Cada error también enseña"
  ];

  int indice = 0;

  void cambiarMensaje() {
    setState(() {
      indice++;

      if (indice >= mensajes.length) {
        indice = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mensajes Motivacionales"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              mensajes[indice],
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: cambiarMensaje,
              child: Text("Cambiar Mensaje"),
            )
          ],
        ),
      ),
    );
  }
}


class CambiarColor extends StatefulWidget {
  @override
  State<CambiarColor> createState() => _CambiarColorState();
}

class _CambiarColorState extends State<CambiarColor> {

  Color colorTarjeta = Colors.blue;

  void cambiarColor(Color nuevoColor) {
    setState(() {
      colorTarjeta = nuevoColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cambiar Color"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                color: colorTarjeta,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {
                  cambiarColor(Colors.blue);
                },
                child: Text("Azul"),
              ),

              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  cambiarColor(Colors.green);
                },
                child: Text("Verde"),
              ),

              SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {
                  cambiarColor(Colors.red);
                },
                child: Text("Rojo"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class InformacionFlutter extends StatefulWidget {
  @override
  State<InformacionFlutter> createState() =>
      _InformacionFlutterState();
}

class _InformacionFlutterState
    extends State<InformacionFlutter> {

  bool mostrar = false;

  void cambiarEstado() {
    setState(() {
      mostrar = !mostrar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Información Flutter"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "¿Qué es Flutter?",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            if (mostrar)
              Text(
                "Flutter es un framework de Google para crear aplicaciones móviles.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: cambiarEstado,
              child: Text(
                mostrar ? "Ocultar Información"
                        : "Mostrar Información",
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FormularioSimple extends StatefulWidget {
  @override
  State<FormularioSimple> createState() =>
      _FormularioSimpleState();
}

class _FormularioSimpleState
    extends State<FormularioSimple> {

  TextEditingController nombreController =
      TextEditingController();

  TextEditingController programaController =
      TextEditingController();

  TextEditingController ciudadController =
      TextEditingController();

  String resultado = "";

  void mostrarDatos() {
    setState(() {
      resultado =
          "Hola, ${nombreController.text}. "
          "Estudias ${programaController.text} "
          "y vives en ${ciudadController.text}.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulario"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: nombreController,
              decoration: InputDecoration(
                labelText: "Nombre",
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: programaController,
              decoration: InputDecoration(
                labelText: "Programa",
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: ciudadController,
              decoration: InputDecoration(
                labelText: "Ciudad",
              ),
            ),

            SizedBox(height: 25),

            ElevatedButton(
              onPressed: mostrarDatos,
              child: Text("Mostrar Información"),
            ),

            SizedBox(height: 25),

            Text(
              resultado,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

class ConfirmarAsistencia extends StatefulWidget {
  @override
  State<ConfirmarAsistencia> createState() =>
      _ConfirmarAsistenciaState();
}

class _ConfirmarAsistenciaState
    extends State<ConfirmarAsistencia> {

  bool asistencia = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asistencia"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CheckboxListTile(
              title: Text("Confirmar asistencia"),
              value: asistencia,
              onChanged: (value) {
                setState(() {
                  asistencia = value!;
                });
              },
            ),

            SizedBox(height: 20),

            Text(
              asistencia
                  ? "Asistencia confirmada"
                  : "Asistencia pendiente",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}