Draggable Fab generated with Chat GPT

[![pub package](https://img.shields.io/pub/v/gpt_draggable_fab.svg)](https://pub.dev/packages/gpt_draggable_fab)
[![Test](https://github.com/voyages-sncf-technologies/draggable_fab/actions/workflows/test.yaml/badge.svg)](https://github.com/voyages-sncf-technologies/draggable_fab/actions/workflows/test.yaml)
[![codecov](https://codecov.io/gh/voyages-sncf-technologies/draggable_fab/branch/main/graph/badge.svg)](https://codecov.io/gh/voyages-sncf-technologies/draggable_fab)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Features

Drag the fab wherever you want.

## Getting started

Add draggable fab to your pubspec

```yaml
draggable_fab: 0.0.1
```

## Usage

use like normal fab :

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: DraggableFab(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        iconData: Icons.add,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```
