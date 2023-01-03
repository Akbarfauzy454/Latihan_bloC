import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/latihan_bloc_satu_bloc.dart';
import 'bloc/latihan_bloc_satu_state.dart';
import 'controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LatihanBlocSatuBloc()),
      ],
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Latihan BloC")),
          body: BlocConsumer<LatihanBlocSatuBloc, LatihanBlocSatuState>(
            listener: (context, state) {},
            builder: (context, state) {
              return TextBerubahController(
                text: state.text,
              );
            },
          ),
        ),
      ),
    );
  }
}
