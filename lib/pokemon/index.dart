import 'package:flutter/material.dart';
import 'api.dart';
import 'models.dart';


List<Color> color=[
  Colors.green,
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.pink,
  Colors.orange,
  Colors.purple,
];
class PokemonsListPage extends StatefulWidget {
  const PokemonsListPage({super.key});

  @override
  State<PokemonsListPage> createState() => _PokemonsListPageState();
}

class _PokemonsListPageState extends State<PokemonsListPage> {
  List<Pokemon> pokemons = [];
  bool isLoading = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    getPokemons().then((result) {
      setState(() {
        pokemons = result;
        isLoading = false;
      });
    }).catchError((e, st) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
      print(e);
      debugPrintStack(stackTrace: st);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text('Pokemons')),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (errorMessage != null) {
      return Scaffold(
        appBar: AppBar(title: Text('Pokemons')),
        body: Center(child: Text(errorMessage!)),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('Pokemons')),
      body: ListView.separated(
        itemCount: pokemons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pokemons[index].name),
            tileColor: color[index%6],
            leading: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemons[index].id}.png'),
          );
        },

        separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        },
      ),
    );
  }
}
