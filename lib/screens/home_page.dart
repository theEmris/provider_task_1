import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task_1/provider/favorite_provider.dart';
import 'package:provider_task_1/provider/popUpMenuButton_provider.dart';
import 'package:provider_task_1/provider/scaffold_provider.dart';
import 'package:provider_task_1/provider/slider_provider.dart';
import 'package:provider_task_1/screens/secondScreen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.read<ScaffoldProvider>().mycolor,
      appBar: AppBar(
        title: Text("first homeWork from Provider"),
      ),
      body: firsPAge(context),
    );
  }

  Column firsPAge(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Slider(
                      value: context.watch<SliderProvider>().givenValue,
                      onChanged: (value) {
                        context.read<SliderProvider>().onChangedValue(value);
                      }),
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("First Second"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("second value"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("Third value"),
                        value: 3,
                      ),
                    ],
                    onSelected: (v) {
                      context
                          .read<PopUpMenuButtonProvider>()
                          .onChanged(v as int);
                    },
                  )
                ],
              ),
            )),
        Expanded(
            flex: 8,
            child: Container(
              color: Colors.purple.shade300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text("$index - element"),
                      trailing: IconButton(
                       
                        onPressed: () {
                          context.read<FavoriteProvider>().changeLikerItem(index);

                          context.read<FavoriteProvider>().addToSet(index);
                        },
                         icon: Icon(
                            context.watch<FavoriteProvider>().liker[index]
                                ? Icons.favorite
                                : Icons.favorite_border),
                      ),
                      subtitle: Container(
                          height: 200,
                          child: Image(
                            image: NetworkImage(
                                "http://source.unsplash.com/random/$index"),
                          )),
                    ),
                  );
                },
                itemCount: 10,
              ),
            ))
      ],
    );
  }
}
