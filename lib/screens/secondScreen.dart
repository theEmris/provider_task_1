import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:provider_task_1/provider/favorite_provider.dart';

class ChoosedThings extends StatelessWidget {
  const ChoosedThings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("choosed things from the list"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return context.read<FavoriteProvider>().mySet.isNotEmpty ?  Card(
            child: ListTile(
              title: Text(
                  "${context.watch<FavoriteProvider>().mySet.toList()[index]}"),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {
                  context.read<FavoriteProvider>().removeFromSet(index);

                 context.read<FavoriteProvider>().notifyListeners();
                },
              ),
              subtitle: Container(
                  height: 200,
                  child: Image(
                    image: NetworkImage(
                        "http://source.unsplash.com/random/${context.watch<FavoriteProvider>().mySet.toList()[index]}"),
                    fit: BoxFit.cover,
                  )),
            ),
          ): Center(child: Text("hech narsa yo'q"),);
        },
        itemCount: context.watch<FavoriteProvider>().mySet.length,
      ),
    );
  }
}
