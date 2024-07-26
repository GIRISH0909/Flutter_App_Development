import 'package:flutter/material.dart';
import 'package:pokedex/pokemon/api.dart';
import 'package:pokedex/pokemon/details.dart';
import 'package:pokedex/pokemon/models.dart';

class PokemonsListPage1 extends StatefulWidget {
  const PokemonsListPage1({super.key});

  @override
  State<PokemonsListPage1> createState() => _PokemonsListPageState();
}

class _PokemonsListPageState extends State<PokemonsListPage1> {
  List<Pokemon> pokemons = [];
  bool isLoading = true;
  bool isLoadingError = false;
  @override
  void initState() {
    super.initState();
    getPokemons().then((result) {
      print('Response $result');

      setState(() {
        pokemons = result;
        isLoading = false;
      });
    }).catchError((e, st) {
      setState(() {
        isLoading = false;
        isLoadingError = true;
      });
      print(e);
      debugPrintStack(stackTrace: st);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pokedex'),
          backgroundColor: Colors.red[900],
          foregroundColor: Colors.yellowAccent,
        ),
        body: isLoading
            ? const CircularProgressIndicator()
            : isLoadingError
            ? const Icon(Icons.warning)
            : PokemonsList(pokemons: pokemons));
  }
}

class PokemonsList extends StatelessWidget {
  const PokemonsList({
    super.key,
    required this.pokemons,
  });

  final List<Pokemon> pokemons;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      children: pokemons.map((pokemon){
        return PokemonWidget(pokemon: pokemon);
      }).toList(),
      crossAxisCount: 3,
      childAspectRatio: 3,
      // itemBuilder: (context, index) {
      //   return PokemonWidget(pokemon: pokemons[index]);
      // },
      // separatorBuilder: (context, index) {
      //   return const SizedBox(
      //     height: 8,
      //   );
      // },
      // itemCount: pokemons.length,
    );
  }
}

class PokemonWidget extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonWidget({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.deepPurple.withOpacity(0.75),
        border: Border.all(
          color: Colors.deepPurple,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          print('${pokemon.name}tapped');
          var navigatorState=Navigator.of(context);
          navigatorState.push(
            MaterialPageRoute(builder: (context) {
              return PokemonDetailsPage(pokemon: pokemon,);
            },)
          );
        },
        splashColor: Colors.red,
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            Hero(
              tag: pokemon.id,
              child: Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemon.id}.png',
              ),
            ),
            Text(pokemon.name),
          ],
        ),
      ),
    );
  }
}