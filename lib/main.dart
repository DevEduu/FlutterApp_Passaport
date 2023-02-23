import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passagem_aeria/widget/DashedDivider.dart';
import 'package:passagem_aeria/widget/FontMenor.dart';

void main() {
  runApp(const Pass());
}

// Config Fonts Google

//Font menor tamanho
const double kfontSizeMenor = 14.0;
// Cor da fonts
const Color kfontMenor = Color.fromARGB(158, 0, 0, 0);

// Cor de fundo fo background
const Color kbgColorClaro = Color.fromRGBO(130, 87, 229, 1);
const Color kbgColorEscuro = Color.fromRGBO(39, 26, 69, 1);

const LinearGradient gradient = LinearGradient(
    colors: [kbgColorClaro, kbgColorEscuro],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

class Pass extends StatelessWidget {
  const Pass({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Background
      body: Container(
        decoration: const BoxDecoration(
          gradient: gradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cartão de embarque',
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Cartão de embarque
              Container(
                width: 327,
                decoration: BoxDecoration(
                  boxShadow: kElevationToShadow[10],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      FontMenor(
                        text01: 'Voo',
                        text02: 'Data',
                      ),
                      FontMenor(
                        text01: 'R\$995',
                        text02: '23/05/2023',
                        fontSize: 16,
                        fontw: FontWeight.w600,
                        colorFontMenor: Colors.black,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      FontMenor(
                        text01: 'São Paulo, Brasil',
                        text02: 'São Francosco, EUA',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'GRU',
                            style: GoogleFonts.rubik(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Icon(
                            Icons.airplane_ticket_rounded,
                            size: 40,
                          ),
                          Text(
                            'SFO',
                            style: GoogleFonts.rubik(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      FontMenor(
                        text01: '17:00',
                        text02: '04:80',
                        colorFontMenor: Colors.black,
                        fontSize: 16,
                      ),
                      SizedBox(height: 24),
                      DashedDivider(
                        width: 327,
                        color: Color.fromARGB(75, 0, 0, 0),
                      ),
                      SizedBox(height: 24),
                      FontMenor(
                        text01: "Passageiro",
                        text02: 'Assento',
                      ),
                      FontMenor(
                        text01: 'Eduardo Oliveira',
                        text02: '28A',
                        fontSize: 16,
                        colorFontMenor: Colors.black,
                        fontw: FontWeight.w600,
                      ),
                      SizedBox(height: 24),
                      DashedDivider(
                        width: 327,
                        color: Color.fromARGB(75, 0, 0, 0),
                      ),
                      SizedBox(height: 24),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    TextSimple(
                                        text01: 'Enbarque', text02: '16:15'),
                                    TextSimple(text01: 'Terminal', text02: '2'),
                                    TextSimple(text01: 'Portão', text02: '15')
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'image/qrCode.png',
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Grupo de embarque: 3',
                                      style: GoogleFonts.rubik(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Atenção: ',
                          style: GoogleFonts.rubik(fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                                text: 'q portão fecha 16:45',
                                style: GoogleFonts.rubik(
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: Text(
                  'Qualquer problema procure o balcão de atentimento da sua companhaia aéria',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    fontSize: 14,
                    color: Color.fromARGB(97, 255, 255, 255),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextSimple extends StatelessWidget {
  TextSimple({super.key, required this.text01, required this.text02});
  final String text01;
  final String text02;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            text01,
            style: GoogleFonts.rubik(
              fontSize: 14,
              color: Color.fromARGB(158, 0, 0, 0),
            ),
          ),
          Text(
            text02,
            style: GoogleFonts.rubik(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}


// Container(
//                                             width: 54,
//                                             height: 24,
//                                             decoration: BoxDecoration(
//                                                 color: kbgColorClaro,
//                                                 borderRadius:
//                                                     BorderRadius.circular(8)),
//                                             padding: EdgeInsets.all(4),
//                                             child: Center(
//                                               child: Text(
//                                                 '16:15',
//                                                 style: GoogleFonts.rubik(
//                                                     color: Colors.white,
//                                                     fontWeight:
//                                                         FontWeight.w600),
//                                               ),
//                                             ),
//                                           ),