import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/counterBloc.dart';
import 'package:state_management/bloc/counterState.dart';
import 'package:state_management/bloc/counterevent.dart';

class counterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return Center(
          child: Text(state.count.toString()),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          // context.read<CounterBloc>().add(IncrementEvent());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
