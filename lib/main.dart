import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text(
          'تطابق صورة',
        ),
        backgroundColor: Colors.indigo[100],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int laftimagenumber = 4;
  int rightimagenumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          laftimagenumber == rightimagenumber
              ? 'مبروك لك لقد نجحت'
              : 'حاول مرة اخرى',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                // flex: 2,حجم الصورة بالنسبة للصورة الثانية

                //توسع الصورة بما يتناسب مع الشاشة
                child: // Image( image: AssetImage('images/image-1.png'),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            rightimagenumber = Random().nextInt(9) + 1;
                            laftimagenumber = Random().nextInt(9) + 1; //0->8
                          });
                        },
                        child:
                            Image.asset('images/image-$laftimagenumber.png')),
              ),
              Expanded(
                // flex: 2,حجم الصورة بالنسبة للصورة الثانية

                //توسع الصورة بما يتناسب مع الشاشة
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        print(laftimagenumber);

                        laftimagenumber = Random().nextInt(9) + 1; //0->8
                        rightimagenumber = Random().nextInt(9) + 1;
                      });
                    },
                    child: Image.asset('images/image-$rightimagenumber.png')),

                // Image(image: AssetImage('images/image-2.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


// الفرق بين 
//statless and statful
//الفل يستخدم للصفحة المتحركة و الثاني للثابتة

// class ImagePage extends StatelessWidget {
//       int laftimagenumber = 4;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Text(
//           'حاول مرة اخرى',
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: [
//               Expanded(
//                 // flex: 2,حجم الصورة بالنسبة للصورة الثانية

//                 //توسع الصورة بما يتناسب مع الشاشة
//                 child: // Image( image: AssetImage('images/image-1.png'),
//                     TextButton(
//                         onPressed: () {
//                           print('اليسار');
//                         },
//                         child: Image.asset('images/image-$laftimagenumber.png')),
//               ),
//               Expanded(
//                 // flex: 2,حجم الصورة بالنسبة للصورة الثانية

//                 //توسع الصورة بما يتناسب مع الشاشة
//                 child: TextButton(
//                     onPressed: () {
//                       print('اليمين');
//                     },
//                     child: Image.asset('images/image-2.png')),

//                 // Image(image: AssetImage('images/image-2.png'),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
