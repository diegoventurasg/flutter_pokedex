import 'package:flutter/material.dart';

import 'package:flutter_pokedex/common/models/pokemon.dart';

class DetailAppBarWidget extends PreferredSize {
  DetailAppBarWidget({
    Key? key,
    required this.pokemon,
    required this.onBack,
  }) : super(
          preferredSize: Size.fromHeight(56),
          child: AppBar(
            elevation: 0,
            backgroundColor: pokemon.baseColor,
            leading:
                IconButton(onPressed: onBack, icon: Icon(Icons.chevron_left)),
          ),
        );

  final Pokemon pokemon;
  final VoidCallback onBack;
}

// class DetailAppBarWidget extends StatelessWidget {
//   const DetailAppBarWidget({
//     Key? key,
//     required this.pokemon,
//     required this.onBack,
//   }) : super(key: key);
//   final Pokemon pokemon;
//   final VoidCallback onBack;

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: 0,
//       left: 0,
//       right: 0,
//       child: AppBar(
//         elevation: 0,
//         backgroundColor: pokemon.baseColor,
//         leading: IconButton(onPressed: onBack, icon: Icon(Icons.chevron_left)),
//       ),
//     );
//   }
// }
