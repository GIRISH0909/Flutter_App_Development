import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/pokemon/models.dart';

class PokemonDetailsPage extends StatefulWidget {
  final Pokemon pokemon;
  const PokemonDetailsPage({super.key,required this.pokemon});

  @override
  State<PokemonDetailsPage> createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  ColorScheme? colorScheme;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ColorScheme.fromImageProvider(
      provider: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${widget.pokemon.id}.png'
      ),
    ).then((value) {
      setState(() {
        colorScheme=value;
      });
    },).catchError((e,st) {
      print(e);
      debugPrintStack(stackTrace: st);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: colorScheme ?? Theme.of(context).colorScheme,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          shadowColor: Colors.black,
          elevation: 10.0,
          bottomOpacity: 15.0,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.black,
          title: Text(widget.pokemon.name),
        ),
        body: Center(
          child: Hero(
            tag: widget.pokemon.id,
            child: SvgPicture.network(
              width: 300,
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/${widget.pokemon.id}.svg',
            ),
          ),
        ),
      ),
    );
  }
}
