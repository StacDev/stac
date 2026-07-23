import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stac/stac.dart';

import 'cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Stac Gallery"),
            ),
            body: Column(
              children: [
                TextField(
                  controller: BlocProvider.of<HomeBloc>(context).controller,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      onPressed:
                          BlocProvider.of<HomeBloc>(context).controller.clear,
                      icon: const Icon(Icons.clear),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state is HomeLoaded) {
                        return Stac.fromJson(
                              {
                                "type": "listView",
                                "shrinkWrap": false,
                                "separator": {
                                  "type": "container",
                                  "height": 10
                                },
                                "children": state.items,
                              },
                              context,
                            ) ??
                            const SizedBox();
                      }
                      if (state is HomeLoading) {
                        return const CircularProgressIndicator();
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
