import 'package:flutter/material.dart';
import 'package:heartbeat_tracker_app/custom_shape/circular_container_position.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              color: Colors.lightGreenAccent,
              child: SizedBox(
                height: 475,
                child: Stack(
                  children: [
                    const Circular_container_position(
                      circleColor: Colors.white,
                    ),
                    const Circular_container_position(
                      circleColor: Colors.white,
                      topPosition: 150,
                      rightPosition: -250,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(width: 0.1)),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Health Monitor',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.settings,
                                    size: 30,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.person,
                                    size: 30,
                                  ),
                                ),
                              ])
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Thing1(infoText: '72'),
                        const SizedBox(height: 10),
                        const Thing1(
                          infoText: '36.0',
                          icon: Icons.local_fire_department,
                          unit: 'Cel *',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Thing2(),
          ],
        ),
      ),
    );
  }
}

class Thing1 extends StatelessWidget {
  const Thing1({
    super.key,
    this.icon = Icons.favorite,
    this.color1 = Colors.yellowAccent,
    this.color2 = Colors.greenAccent,
    this.infoText = "data",
    this.unit = 'BPM',
  });

  final IconData icon;
  final Color color1, color2;
  final String infoText, unit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 125,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: Colors.red,
                  size: 90,
                ),
                const SizedBox(width: 20),
                Container(
                  height: 75,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                      child: Text(
                    infoText,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  )),
                ),
                const SizedBox(width: 10),
                Text(
                  unit,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Thing2 extends StatelessWidget {
  const Thing2({
    super.key,
    this.color1 = Colors.yellowAccent,
    this.color2 = Colors.greenAccent,
  });

  final Color color1, color2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
      ),
    );
  }
}
