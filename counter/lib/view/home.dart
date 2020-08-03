import 'package:counter/viewmodels/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart' hide Locator;

class Home extends StatelessWidget {
  const Home._({Key key}) : super(key: key);

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeViewModel(read: context.read),
        ),
      ],
      child: const Home._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLoaded =
        context.select((HomeViewModel viewModel) => viewModel.isLoaded);
    return Scaffold(
      appBar: AppBar(title: Text('SIMPLE PERSISTANCE COUNTER')),
      body: Center(
        child: isLoaded ? const _Contents() : const CircularProgressIndicator(),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            child: Text('+1'),
            onPressed: () => context.read<HomeViewModel>().increment(),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: Text('-1'),
            onPressed: () => context.read<HomeViewModel>().decrement(),
          ),
        ],
      ),
    );
  }
}

class _Contents extends StatelessWidget {
  const _Contents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const _CountText(),
        const SizedBox(height: 8),
        const _TimestampIndicator(),
        RaisedButton(
          child: Text('SAVE'),
          onPressed: () => context.read<HomeViewModel>().save(),
        ),
      ],
    );
  }
}

class _CountText extends StatelessWidget {
  const _CountText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = context.select((HomeViewModel viewModel) => viewModel.count);
    return Text('Count: $count');
  }
}

class _TimestampIndicator extends StatelessWidget {
  const _TimestampIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timestamp =
        context.select((HomeViewModel viewModel) => viewModel.savedAt);
    return Text('Last Save: $timestamp');
  }
}
