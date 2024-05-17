import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      _currentPageIndex = (_currentPageIndex + 1) % 7;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sounds_Music",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sounds_Music",
            style: TextStyle(color: Color(0xffd79e00)),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          children: [
            // Contenido del primer tab (imagen)
            Container(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("aasdasd");
                },
                child: Card(
                  elevation: 40,
                  color: Colors.grey[300],
                  shadowColor: Color(0xff003a69),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/piano.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "El piano es un instrumento de teclado, de la familia de cuerda percutida, al generar su sonido al golpear sus cuerdas con unos martillos controlados por el teclado. Puede producir acordes y dispone de un amplio registro.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ),
            // Contenido del segundo tab
            Container(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("aasdasd");
                },
                child: Card(
                  elevation: 40,
                  color: Colors.grey[300],
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/bat.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "Una batería es un conjunto de tambores, platillos y otros instrumentos de percusión, que se colocan en soportes para ser tocados por un solo músico,​ con baquetas en ambas manos y los pies accionando los pedales que controlan el platillo del hi-hat y el golpeador del bombo.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            // Contenido del tercer tab
            Container(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("aasdasd");
                },
                child: Card(
                  elevation: 40,
                  color: Colors.grey[300],
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/poder.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "Los altavoces que contienen un amplificador de potencia interno también se pueden llamar altavoces activos. Como estos altavoces contienen un amplificador de potencia incorporado, se pueden conectar directamente a un mezclador, lo que reduce la cantidad de cables necesarios.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            // Contenido del cuarto tab
            Container(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("aasdasd");
                },
                child: Card(
                  elevation: 40,
                  color: Colors.grey[300],
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/guitar.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "La guitarra eléctrica es un tipo de guitarra en la que, a diferencia de la guitarra española y la guitarra sonaja, su caja no hace resonancia, por lo que el sonido se produce indirectamente por inducción eléctrica y a través de un amplificador o también a través de un pedal de efectos.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            // Contenido del quinto tab
            Container(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("aasdasd");
                },
                child: Card(
                  elevation: 40,
                  color: Colors.grey[300],
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/bajo.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "El bajo eléctrico, llamado sencillamente bajo,1​ es un instrumento musical melódico de la familia de los cordófonos, similar en apariencia y construcción a la guitarra eléctrica, pero con un cuerpo de mayores dimensiones, un mástil de mayor longitud y escala y cuerdas más gruesas, normalmente cuatro, afinadas según la afinación estándar del contrabajo, su antecesor.2​3​",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            // Contenido del sexto tab
            Container(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("aasdasd");
                },
                child: Card(
                  elevation: 40,
                  color: Colors.grey[300],
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/pas jbl.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "Los altavoces que sólo ofrecen la funcionalidad básica de un altavoz pueden llamarse altavoces pasivos. Estos altavoces requieren un amplificador de potencia para producir sonido.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            // Contenido del séptimo tab
            Container(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("aasdasd");
                },
                child: Card(
                  elevation: 40,
                  color: Colors.grey[300],
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/images/sax.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: Text(
                          "El saxofón, conocido comúnmente como “saxo”, es un instrumento de música aerófono, con forma cónica, perteneciente a la familia de viento madera y que utiliza una boquilla con una caña simple para poder funcionar.",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
