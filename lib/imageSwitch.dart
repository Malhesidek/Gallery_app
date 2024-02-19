import 'package:flutter/material.dart';

class ImageSwitch extends StatefulWidget {
  const ImageSwitch({super.key});

  static int image_num = 1;

  @override
  State<ImageSwitch> createState() {
    return _ImageSwitch();
  }
}

class _ImageSwitch extends State<ImageSwitch> {
  void imageClick(String direction) {
    setState(() {
      if (direction == 'left' && ImageSwitch.image_num == 1) {
        ImageSwitch.image_num = 3;
      } else if (direction == 'right' && ImageSwitch.image_num == 3) {
        ImageSwitch.image_num = 1;
      } else {
        ImageSwitch.image_num++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Choose your image',
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/images/photo-${ImageSwitch.image_num}.webp',
          width: 250,
          
        ),
        const SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          IconButton(
              onPressed: () => imageClick('left'),
              icon: const Icon(
                Icons.arrow_back,
                size: 50,
                color: Colors.blue,
              )),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () => imageClick('right'),
              icon:
                  const Icon(Icons.arrow_forward, size: 50, color: Colors.blue))
        ]),
      ],
    );
  }
}
