import 'dart:math';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:calculadora_imc/recetario_movil_sin_wifi.dart';

double altura = 174.0;
double peso = 61.0;
double imc = 20.1;
String imagenSeleccionada = 'assets/images/undraw_hiking_re_k0bc.svg';
RecetaModel receta = RecetaModel(
    imc_max: 20.1,
    diagnostico: 'Normal',
    receta:
        'Debes de comer más saludable, ejercitar más saludable, pasear más saludable, jugar más saludable, dormir más saludable.');
RecetarioMovilSinWifi recetarioMovilSinWifi = RecetarioMovilSinWifi();

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePage({super.key});
  RecetarioMovilSinWifi misRecetas = RecetarioMovilSinWifi();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calcular IMC',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Column(
            children: [
              // Mostar la altura:
              Text(
                'Altura:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    altura.toString(),
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'cm',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              // Record de personas más altas:
              // https://es.wikipedia.org/wiki/Anexo:Personas_m%C3%A1s_altas_del_mundo
              // Record del bebé prematuro:
              // https://www.20minutos.es/noticia/3656115/0/dada-de-alta-bebe-prematuro-23-semanas-245-gramos/
              Slider(
                activeColor: Colors.blueAccent,
                inactiveColor: Colors.blue.shade50,
                min: 20.0,
                max: 290.0,
                divisions: 2700,
                value: altura,
                onChanged: (value) {
                  setState(() {
                    altura = (value * 10).roundToDouble() / 10;
                  });
                },
              ),
              // Mostrar el peso:
              Text(
                'Peso:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    peso.toString(),
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'kg',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              // Record de personas más pesadas:
              // https://es.wikipedia.org/wiki/Anexo:Personas_m%C3%A1s_pesadas
              // Record del bebé prematuro:
              // https://www.bbc.com/mundo/noticias-48460212
              Slider(
                activeColor: Colors.blueAccent,
                inactiveColor: Colors.blue.shade50,
                min: 0.2,
                max: 700.0,
                divisions: 6998,
                value: peso,
                onChanged: (value) {
                  setState(() {
                    peso = (value * 10).roundToDouble() / 10;
                  });
                },
              ),
              ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () {
                    imc = peso / (altura * altura / 10000);
                    receta = recetarioMovilSinWifi.obtenerReceta(imc);
                    imagenSeleccionada = azar();
                    setState(() {});
                  },
                  child: Text('Calcular',
                      style: TextStyle(color: Colors.white, fontSize: 20.0))),
              Text(
                ((imc * 10).roundToDouble() / 10).toString(),
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
              ),
              Text(
                textAlign: TextAlign.center,
                receta.diagnostico,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              Text(
                textAlign: TextAlign.center,
                receta.receta,
                style: TextStyle(fontSize: 16.0, color: Colors.black54),
              ),
              Expanded(
                child: SvgPicture.asset(
                  imagenSeleccionada,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

String azar() {
  final random = new Random();
  String valor;
  try {
    valor =
        'assets/images/${receta.imagenes[random.nextInt(receta.imagenes.length)]}';
  } catch (e) {
    print('Esta receta no tiene imágenes asociadas...');
    valor = 'assets/images/undraw_page_not_found_re_e9o6.svg';
  }
  if (!isLocalAsset(valor)) {
    valor = 'assets/images/undraw_page_not_found_re_e9o6.svg';
  }
  return valor;
}

bool isLocalAsset(String assetPath) {
  final encoded =
      utf8.encoder.convert(Uri(path: Uri.encodeFull(assetPath)).path);
  final asset = ServicesBinding.instance.defaultBinaryMessenger
      .send('flutter/assets', encoded.buffer.asByteData());
  return (asset != null);
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  shadowColor: Colors.black87,
  foregroundColor: Colors.blueAccent,
  backgroundColor: Colors.blue,
  minimumSize: const Size.fromHeight(50),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);
