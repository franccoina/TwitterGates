import 'package:flutter/material.dart';

class CustomImagecard extends StatelessWidget {
  final String urlImage;
  final VoidCallback tapCustom;

  const CustomImagecard(this.urlImage, this.tapCustom, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Colors.black,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 1),
        ),
        child: GestureDetector(
          onTap: tapCustom,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    urlImage,
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              IconButton(
                onPressed: tapCustom,
                icon: const Icon(Icons.remove_red_eye),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
