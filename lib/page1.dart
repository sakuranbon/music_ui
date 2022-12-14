import 'package:flutter/material.dart';



class Page1 extends StatefulWidget {
  const Page1({Key? key,required this.title, required this.imageUrl, required this.artist}): super(key: key);
  final String title;
  final String imageUrl;
  final String artist;

  @override
  _Page1State createState() => _Page1State();

}

class _Page1State extends State<Page1> {
  late Center selectedGender;
  int height = 180;
  bool isPressed = false;
  bool _isTapped =false;
  IconData icon = Icons.play_circle;

  get musicList => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff404040),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextButton(onPressed: ()=>Navigator.of(context).pop(),
            child: const Text('', style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),),



            Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isTapped = !_isTapped;
                  });
                },
                child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.asset(widget.imageUrl, fit: BoxFit.cover)
                ),
              ),
            ),

            Text(widget.title, style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),

            Text(widget.artist, style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),),




          Slider(
            value: height.toDouble(),
            min: 120.0,
            max: 220.0,
            activeColor: Colors.white,
            inactiveColor: const Color(0xFF8D8E98),
            onChanged: (double newValue) {
              setState(() {
                height = newValue.round();
              });
            },
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Container(
                padding: EdgeInsets.only(left: 20),
                width: 40,
                height: 20,
                child:const Text('0:00',style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),),),

              Spacer(),

              Container(
                padding: EdgeInsets.only(right: 20),
                width: 40,
                height: 20,
                child:const Text('5:00',style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey
                ),),),
            ],

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.skip_previous),
                iconSize: 70,
                color: Colors.white,
                onPressed: (){},
              ),

              IconButton(
                icon: Icon(icon),
                iconSize: 70,
                color: Colors.white,
                onPressed: (){
                  isPressed = !isPressed;
                  setState(() {
                    icon = isPressed ? Icons.play_arrow:
                    Icons.pause;

                  });
                },
              ),

              IconButton(
                icon: const Icon(Icons.skip_next),
                iconSize: 70,
                color: Colors.white,
                onPressed: (){},
              ),
            ],
          )
        ],
      ),

    );
  }
}




