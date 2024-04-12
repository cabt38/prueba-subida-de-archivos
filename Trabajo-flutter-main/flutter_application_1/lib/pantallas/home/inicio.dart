import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:secondly/pantallas/tarjetas/hometarjetas.dart';
import 'package:secondly/pantallas/login/bienvenida.dart';
import 'package:secondly/pantallas/login/login.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key});

  static const List<String> sampleImages = [
    'https://img.freepik.com/free-photo/lovely-woman-vintage-outfit-expressing-interest-outdoor-shot-glamorous-happy-girl-sunglasses_197531-11312.jpg?w=1800&t=st=1673886721~exp=1673887321~hmac=57318aa37912a81d9c6e8f98d4e94fb97a766bf6161af66488f4d890f88a3109',
    'https://img.freepik.com/free-photo/attractive-curly-woman-purple-cashmere-sweater-fuchsia-sunglasses-poses-isolated-wall_197531-24158.jpg?w=1800&t=st=1673886680~exp=1673887280~hmac=258c92922874ad41d856e7fdba03ce349556cf619de4074143cec958b5b4cf05',
    'https://img.freepik.com/free-photo/stylish-blonde-woman-beret-beautiful-french-girl-jacket-standing-red-wall_197531-14428.jpg?w=1800&t=st=1673886821~exp=1673887421~hmac=5e77d3fab088b29a3b19a9023289fa95c1dc2af15565f290886bab4642fa2621',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF361973),
          flexibleSpace: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/imagenes/lago.png',
                  fit: BoxFit.contain,
                  height: 35,
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 238, 232, 249),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF361973),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'Bienvenido a IDREAL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 40,
                  color: Color.fromARGB(255, 88, 31, 219),
                ),
                title: Text(
                  'Usuario',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hometarjetas()),
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.help_outline_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 88, 31, 219),
                ),
                title: Text(
                  'Ayuda',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hometarjetas()),
                  );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app_rounded,
                  size: 40,
                  color: Color.fromARGB(255, 88, 31, 219),
                ),
                title: Text(
                  'Cerrar Sesión',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bienvenida()),
                  );
                },
              ),
              Divider(),
            ],
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  width: 50,
                  height: 10,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/imagenes/newgordo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                FanCarouselImageSlider(
                  imagesLink: sampleImages,
                  isAssets: false,
                  autoPlay: true,
                  sliderHeight: 330,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    /* valores para ubicar los botones con respecto a los lados */
                    left: constraints.maxWidth * 0.05,
                    right: constraints.maxWidth * 0.05,
                    top: constraints.maxHeight * 0.60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _botonescard(
                        context,
                        "Mi tarjeta",
                        "assets/imagenes/BOTON 1.png",
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hometarjetas()),
                        ),
                      ),
                      _botonescard(
                        context,
                        "Gestionar \ntarjetas",
                        "assets/imagenes/BOTON 2.png",
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hometarjetas()),
                        ),
                      ),
                      _botonescard(
                        context,
                        "Mis datos",
                        "assets/imagenes/BOTON3.png",
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hometarjetas()),
                        ),
                      ),
                      _botonescard(
                        context,
                        "Modo \nsin conexión",
                        "assets/imagenes/BOTON 4.png",
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Bienvenida()),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.78,
                  ),
                  child: _botonescard(
                    context,
                    "Escanear QR",
                    "assets/imagenes/QR.png",
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hometarjetas()),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          animationCurve: Curves.easeInOut,
          backgroundColor: Color(0xFF361973),
          color: Color(0xFF361973),
          animationDuration: Duration(milliseconds: 250),
          onTap: (index) {},
          items: [
            Icon(Icons.home_filled, size: 40, color: Colors.white),
            Icon(Icons.qr_code, size: 40, color: Colors.white),
            Icon(Icons.exit_to_app, size: 40, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _botonescard(
      BuildContext context, String text, String imagePath, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: MediaQuery.of(context).size.width * 0.13, /* ancho botones */
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
