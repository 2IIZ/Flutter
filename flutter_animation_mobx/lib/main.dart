import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animation_mobx/domain/logic/animation/button_animation.dart';
import 'package:flutter_animation_mobx/domain/logic/counter/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final counter = Counter(); // Instantiate the store
final buttonAnimation = ButtonAnimation();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations and MobX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    buttonAnimation.controller = AnimationController(
      value: buttonAnimation.buttonScale,
      lowerBound: 0.7,
      upperBound: 1,
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    buttonAnimation.controller.addListener(() {
      buttonAnimation.buttonScale = buttonAnimation.controller.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            // Wrapping in the Observer will automatically re-render on changes to counter.value
            Observer(
              builder: (_) => Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Observer(builder: (_) {
              return Text('animation value : ${buttonAnimation.buttonScale}');
            })
          ],
        ),
      ),
      floatingActionButton: Observer(builder: (context) {
        return ScaleTransition(
          scale: buttonAnimation.buttonZoomAnimation,
          child: FloatingActionButton(
            onPressed: () {
              HapticFeedback.selectionClick();
              buttonAnimation.scaleAnimation();
              counter.increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      }),
    );
  }
}
