import 'package:flutter/material.dart';
import '../configs.dart' as cf;

class DetailCard extends StatefulWidget {
  const DetailCard({super.key});

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {

  changeTitle(){
    cf.actuallyName = '${cf.actuallyName} x';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Text(cf.actuallyName, style: cf.titlesTexts,),
          ),
          ElevatedButton(
            style: cf.styleButton,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Return'),
          ),
          ElevatedButton(
            style: cf.styleButton,
            onPressed: changeTitle,
            child: const Text('Change Text'),
          ),
        ],
      ),
    );
  }
}