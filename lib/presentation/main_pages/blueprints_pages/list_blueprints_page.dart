import 'package:builder/widgets/containers.dart';
import 'package:flutter/material.dart';

class BluePrintsPage extends StatefulWidget {
  const BluePrintsPage({super.key});

  @override
  State<BluePrintsPage> createState() => _BluePrintsPageState();
}

class _BluePrintsPageState extends State<BluePrintsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              padding: const  EdgeInsets.only(
                left: 10,
                top: 10,
                right: 10,
              ),
              scrollDirection: Axis.vertical,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              crossAxisCount: 2,
              children: [
                blueprintPreview(
                  name: 'План дома 1',
                ),
                blueprintPreview(
                  name: 'План дома 2',
                ),
                blueprintPreview(
                  name: 'План дома 3',
                ),
                blueprintPreview(
                  name: 'План дома 4',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
