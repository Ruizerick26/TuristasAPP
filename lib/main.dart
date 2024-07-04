import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Lugares Turisticos';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
            child: Column(
              children: [
                ImageSection(image: 'images/Iglesia.jpg',),
                TitleSection(name: 'Iglesia de San Francisco', location: 'Centro Historico Quito'),
                ButtonSection(),
                TextSection(description:
                 'La Iglesia de San Francisco es una basílica católica que se levanta en medio del centro histórico de Quito, frente a la plaza del mismo nombre. La estructura es el conjunto arquitectónico de mayor dimensión dentro de los centros históricos de toda América, ​ y por ello es conocido como "el Escorial del Nuevo Mundo"'),

                ImageSection(image: 'images/panecillo.jpeg',),
                TitleSection(name: 'Panecillo', location: 'Centro Historico Quito'),
                ButtonSection(),
                TextSection(description: 'El Panecillo es una elevación natural de 3.000 metros sobre el nivel del mar, enclavada en el corazón mismo de la ciudad de Quito. Es el sitio más visitado de la ciudad.'),
                
                ImageSection(image: 'images/mitad.jpg',),
                TitleSection(name: 'Mitad del mundo', location: 'Norte de Quito'),
                ButtonSection(),
                TextSection(description: 'La Ciudad Mitad del Mundo es un complejo turístico y cultural propiedad de la prefectura de la provincia de Pichincha. Está situado en la parroquia de San Antonio del Distrito Metropolitano de Quito, al norte de la ciudad de Quito. '),

                ImageSection(image: 'images/teleferico.png',),
                TitleSection(name: 'Teleferico', location: 'Norte de Quito'),
                ButtonSection(),
                TextSection(description: 'El TelefériQo es una telecabina que opera en Quito, Ecuador, ubicado en las estribaciones del volcán Rucu Pichincha. Asciende desde la plataforma Motriz a 3117 m s. n. m., hasta Cruz Loma a 3947 m s. n. m., lo cual lo convierte en uno de los telecabinas más altos del mundo.'),

                ImageSection(image: 'images/plaza.jpg',),
                TitleSection(name: 'Plaza Grande', location: 'Centro Historico Quito'),
                ButtonSection(),
                TextSection(description: 'La plaza de la Independencia, también conocida como plaza Grande, es la principal plaza de la ciudad de Quito, ubicada en el casco antiguo de la ciudad. Se trata de la plaza mayor de la capital, centro político e histórico del Ecuador, y asiento simbólico del presidente del Ecuador.'),
              ],
              
            ),
         ),
        ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: const TextStyle(
                    color: Color.fromARGB(136, 131, 47, 47),
                  ),
                ),
              ],
            ),
          ), 
          Icon(
            Icons.star,
            color: const Color.fromARGB(255, 128, 61, 57),
          ),
          const Text('55550'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Color.fromRGBO(127, 53, 211, 0.63),),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget{
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context){
      return Padding(padding: const EdgeInsets.all(32),
      child: Text(description,
      softWrap: true,
      ),
    );
  } 
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}