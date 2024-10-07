import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultadoConsultaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/blanco.png'),
            fit: BoxFit.cover, // Ajuste de la imagen para cubrir todo el fondo
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Espacio superior
            const SizedBox(height: 30),

            // Sección de Usuario: Welcome text and user image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logo
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SvgPicture.asset(
                          'assets/icons/logo_homepage.svg',
                          height: 60,
                        ),
                      ),
                      const SizedBox(height: 10), // Espacio entre logo y nombre
                      // Nombre del usuario
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          'Javier Mesa',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromARGB(255, 49, 104, 197),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors
                            .green, // Borde verde como en la imagen proporcionada
                        width: 3.0,
                      ),
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/11.jpg'), // Reemplaza con tu imagen en los assets
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(
                      255, 49, 104, 197), // Fondo azul con opacidad
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Análisis de Condiciones
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Text("Query bar",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(
                                      255, 255, 255, 255), // Azul
                                )),
                          ),
                          Container(
                            height: 80,
                            width: double.infinity,
                            // color: Colors.red,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: const Text(
                                "Is it a good time to plant corn?",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 0, 0, 0), // Azul
                                )),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SizedBox(
                              width: double
                                  .infinity, // Toma todo el ancho disponible
                              child: Card(
                                color: const Color.fromARGB(255, 255, 255,
                                    255), // Fondo azul claro para la tarjeta
                                margin:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                elevation: 4,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.00),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //ANALISIS DE CONDICIONES
                                      const SizedBox(
                                          width: double
                                              .infinity, // Toma todo el ancho disponible
                                          child: Card(
                                              color: Color.fromARGB(
                                                  255,
                                                  221,
                                                  228,
                                                  243), // Fondo azul claro para la tarjeta
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Condition Analysis:',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color(
                                                            0xFF3174C5), // Azul
                                                      ),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    const Text(
                                                      '• Conditions are optimal. Soil moisture is at 60%, and moderate rainfall is expected in the next 7 days.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xFF3174C5), // Azul
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ))),

                                      //INDICATORS
                                      const SizedBox(
                                        width: double
                                            .infinity, // Toma todo el ancho disponible
                                        child: Card(
                                          color: Color.fromARGB(255, 221, 228,
                                              243), // Fondo azul claro para la tarjeta
                                          // margin: EdgeInsets.symmetric(vertical: 16.0),
                                          // elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Indicators:',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(
                                                        0xFF3174C5), // Azul
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Rainfall:',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(
                                                        0xFF3174C5), // Azul
                                                  ),
                                                ),
                                                Text(
                                                  '• Next 3 days: Light rain, accumulating 15 mm. Days 4 to 7:',
                                                  style: TextStyle(
                                                    color: Color(
                                                        0xFF3174C5), // Azul
                                                  ),
                                                ),
                                                Text(
                                                  '• Moderate rain, with an accumulation of up to 20 mm.',
                                                  style: TextStyle(
                                                    color: Color(
                                                        0xFF3174C5), // Azul
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  'Soil Moisture:',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(
                                                        0xFF3174C5), // Azul
                                                  ),
                                                ),
                                                Text(
                                                  '• Current condition: 60% moisture in the top layer (10-30 cm).',
                                                  style: TextStyle(
                                                    color: Color(
                                                        0xFF3174C5), // Azul
                                                  ),
                                                ),
                                                Text(
                                                  '• Optimal range for sowing corn: Between 50% and 70%.',
                                                  style: TextStyle(
                                                    color: Color(
                                                        0xFF3174C5), // Azul
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      // Recomendación
                                      SizedBox(
                                        width: double
                                            .infinity, // Toma todo el ancho disponible
                                        child: Card(
                                          color: const Color.fromARGB(
                                              255,
                                              221,
                                              228,
                                              243), // Fondo azul claro para la tarjeta
                                          // margin: const EdgeInsets.symmetric(vertical: 16.0),
                                          // elevation: 4,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'RECOMMENDATIONS:',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(
                                                        0xFF3174C5), // Azul
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16,
                                                      vertical: 8),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                        255,
                                                        49,
                                                        104,
                                                        197,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          height: 100,
                                                          child:
                                                              const TextField(
                                                            maxLines: 5,
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  'Write your recommendation here...',
                                                              border:
                                                                  InputBorder
                                                                      .none,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      IconButton(
                                                        icon: Container(
                                                          height: 55,
                                                          width: 55,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    86,
                                                                    243,
                                                                    101),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: const Icon(
                                                            Icons.mic,
                                                            size: 35,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        onPressed: () {
                                                          // Acción para el botón del micrófono
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  ResultadoConsultaPage(),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //
                        ],
                      ),
                    ),

                    ///footer
                    Positioned(
                      bottom: 15,
                      left: 0,
                      right: 0,
                      // top: 100,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        height: 65,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 49, 104, 197),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/logo.svg', // Make sure to use your own URL or a local resource
                              height: 50,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "|",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 1)),
                                    child: const Icon(Icons.person,
                                        size: 40, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 30,
              width: 40,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
