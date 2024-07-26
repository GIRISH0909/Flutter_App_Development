import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokedex/Avatar_dynamic.dart';
import 'package:pokedex/List_Builder.dart';
import 'package:pokedex/Circles.dart';
import 'package:pokedex/column.dart';
import 'package:pokedex/container.dart';
import 'package:pokedex/expanded.dart';
import 'package:pokedex/list.dart';
import 'package:pokedex/list_Horizontal.dart';
import 'package:pokedex/list_column.dart';
import 'package:pokedex/pokemon/index.dart';
import 'package:pokedex/pokemon/index1.dart';
import 'package:pokedex/row.dart';
import 'package:pokedex/stack.dart';
import 'package:pokedex/stateful_counter.dart';
import 'package:pokedex/stateful_row.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My New App',
      home: PokemonsListPage1(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        shadowColor: Colors.black,
        elevation: 10.0,
        bottomOpacity: 15.0,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        title: Text('My Title'),
      ),
      drawer: Drawer(
          child: SafeArea(
            child: SafeArea(
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('Close the drawer'),
                )
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Scaffold.of(context).showBottomSheet(
                  (context) => Container(
                child: Text('Hello'),
              )
          );
        },
        child: Text('Click'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 100,),
        color: Theme.of(context).colorScheme.primary,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Image(
    //    image: NetworkImage(
            //'https://i.pinimg.com/236x/8f/e1/72/8fe172775486b04dc70cd5e8e041b830.jpg'
    //    )
    //);

    //return Image.network(
    //    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPnwAt6yWGcMWkXHBqPRgq7mgo4OramPWw_w&s.jpg',
    //    fit:BoxFit.cover,

    //return CachedNetworkImage(
    //  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAEaBqNOjQ1PYV54HqE8gNnz5BZ13avAQ4ng&s.jpg'
    //);

   // return Center(
   //   child: ElevatedButton.icon(
   //     onPressed: (){
   //       print("Button pressed");
   //     },
    //    label: Text(
    //      'Search',
    //      style: TextStyle(
    //         fontSize: 30,
    //         color: Colors.deepPurpleAccent,
    //       ),
    //     ),
    //     icon: Icon(
    //       Icons.search,
    //       size:30,
    //       color: Colors.deepPurpleAccent,
    //     ),
    //   ),
    //);


    // return Center(
    //   child:CircularProgressIndicator(
    //     value:0.80,
    //     color: Colors.green,
    //     backgroundColor: Colors.black,
    //     strokeWidth: 25,
    //     strokeAlign: 15,
    //   )
    // );
    //

    // return const Center(
    //   child: LinearProgressIndicator(
    //     color: Colors.red,
    //     backgroundColor: Colors.green,
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(10),
    //     ),
    //   ),
    // );

    //return PESUContainer();
    //return PESURow();
    //return PESUColumn();
    //return PESUExpanded();
    //return PESUStack();
    return AvatarStack(n:6);
    //return PESUListView(n:100);
    //return PESUListBuilder(n:100);
    //return PESUListHorizontalList(n:100);
  }
}
