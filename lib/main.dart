import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/common/repositories/pokemon_repository.dart';
import 'package:flutter_pokedex/features/pokedex/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex 2k21',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PokedexRoute(
        repository: PokemonRepository(
          dio: Dio(),
        ),
      ),
      // home: HomeContainer(
      //   repository: PokemonRepository(dio: Dio()),
      // ),
    );
  }
}
