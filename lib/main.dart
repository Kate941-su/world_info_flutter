import 'package:flutter/material.dart';
import 'package:rate_converter_flutter/ui/main_screen.dart';
import 'blocs/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}

// Widget _counter(BuildContext context, int counter) {
//   return Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           counter.toString(),
//           style: Theme.of(context).textTheme.headlineLarge,
//         ),
//         const SizedBox(
//           height: 50,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MaterialButton(
//               color: Colors.red,
//               elevation: 0.0,
//               height: 50,
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(8))),
//               child: const Text(
//                 "-",
//                 style: TextStyle(fontSize: 22, color: Colors.white),
//               ),
//               onPressed: () {
//                 context
//                     .read<CounterBloc>()
//                     .add(const CounterEvent.numberDecreaseEvent());
//               },
//             ),
//             const SizedBox(
//               width: 50,
//             ),
//             MaterialButton(
//               color: Colors.green,
//               elevation: 0.0,
//               height: 50,
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(8))),
//               child: const Text(
//                 "+",
//                 style: TextStyle(fontSize: 22, color: Colors.white),
//               ),
//               onPressed: () {
//                 context
//                     .read<CounterBloc>()
//                     .add(const CounterEvent.numberIncreaseEvent());
//               },
//             ),
//           ],
//         )
//       ],
//     ),
//   );
// }
