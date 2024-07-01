import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
            child: Column(
              children: [
                ImageSection(image: 'images/foto.jpeg',),
                TitleSection(name: 'Iglesia de San Francisco', location: 'Centro Historico Quito'),
                ButtonSection(),
                TextSection(description: 'Descipcion de la Iglesia de San Francisco'),

                ImageSection(image: 'images/foto.jpeg',),
                TitleSection(name: 'Panecillo', location: 'Centro Historico Quito'),
                ButtonSection(),
                TextSection(description: 'Descipcion del Panecillo'),
                
                ImageSection(image: 'images/foto.jpeg',),
                TitleSection(name: 'Mitad del mundo', location: 'Norte de Quito'),
                ButtonSection(),
                TextSection(description: 'Descipcion de la Mitad del mundo'),

                ImageSection(image: 'images/foto.jpeg',),
                TitleSection(name: 'Teleferico', location: 'Norte de Quito'),
                ButtonSection(),
                TextSection(description: 'Descipcion del Teleferico'),

                ImageSection(image: 'images/foto.jpeg',),
                TitleSection(name: 'Plaza Grande', location: 'Centro Historico Quito'),
                ButtonSection(),
                TextSection(description: 'Descipcion de la Plaza Grande'),
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