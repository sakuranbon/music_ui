


import 'package:flutter/material.dart';
import 'package:music_ui/page1.dart';



void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Map<String,dynamic>> musicList=[

  {'title': 'さくらぼっち',
  'imageUrl': 'images/musicImage/7544749B-C694-44CB-A81F-57786BCF8D6A.jpeg',
  'artist': 'コアラモード'},

{'title': '青と夏',
  'imageUrl': 'images/musicImage/011CC400-1A2D-447E-8DA5-6EFF7345C04C.jpeg',
  'artist': 'Mrs.GREEN APPLE'},

{'title': '黄昏インザスパイ',
  'imageUrl': 'images/musicImage/4C3A397D-E1A5-4C6E-AEAB-60EEC8850C21.jpeg',
  'artist': 'Unison Square Garden'},

  ];






    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xff404040),
        appBar: AppBar(
          title: const Text('ホーム', style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          actions: const [
            Icon(Icons.search_off_outlined)
          ],
        ),

        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(5)),
                      const Text('あなたへのおすすめ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      const Spacer(),

                      const Padding(padding: EdgeInsets.only(right: 10)),
                      Container(
                        width: 30,
                        height: 30,
                        child: const Text('>',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 5,
                  ),


                  SizedBox(
                    width: 500,
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        const Padding(padding: EdgeInsets.only(left: 8)),
                        SizedBox(
                          width: 140,
                          height: 140,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:GestureDetector(
                                    onTap:
                                        ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context){return Page1(title: musicList[0]['title'], artist: musicList[0]['artist'], imageUrl: musicList[0]['imageUrl'],);})),
                                    child: Image.asset(musicList[0]['imageUrl'],
                                      fit: BoxFit.cover,),),
                                ),
                                 Text(musicList[0]['artist'],style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,)),
                                 Text(musicList[0]['title'],style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),),
                              ]
                          ),
                        ),

                        SizedBox(
                          width: 8,
                        ),

                        SizedBox(
                          width: 140,
                          height: 140,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:GestureDetector(
                                    onTap:
                                        ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context){return Page1(title: musicList[1]['title'], artist: musicList[1]['artist'], imageUrl: musicList[1]['imageUrl'],);})),
                                    child: Image.asset(musicList[1]['imageUrl'],
                                      fit: BoxFit.cover,),),
                                ),
                                Text(musicList[1]['artist'],style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,)),
                                Text(musicList[1]['title'],style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),),
                              ]
                          ),
                        ),

                        SizedBox(
                          width: 8,
                        ),

                        SizedBox(
                          width: 140,
                          height: 140,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:GestureDetector(
                                    onTap:
                                        ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context){return  Page1(title: musicList[2]['title'], artist: musicList[2]['artist'], imageUrl: musicList[2]['imageUrl'],);})),
                                    child: Image.asset(musicList[2]['imageUrl'],
                                      fit: BoxFit.cover,),),
                                ),
                                Text(musicList[2]['artist'],style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,)),
                                Text(musicList[2]['title'],style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),),
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),



                  Row(
                    children: const [
                      Padding(padding: EdgeInsets.all(5)),
                      Text('カテゴリー',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),

                      Spacer(),

                      Padding(padding: EdgeInsets.only(right: 10)),
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Text('>', style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ),
                    ],
                  ),


                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 500,
                    height: 230,
                    child: GridView.count(
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.7,


                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topLeft,
                                  end: FractionalOffset.bottomRight,
                                  colors: [
                                    Colors.pink.withOpacity(1.0),
                                    Colors.pink.withOpacity(0.3),
                                  ]
                              )
                          ),
                          alignment: Alignment.center,
                          child: const Text('クラシック', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        ),

                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topLeft,
                                  end: FractionalOffset.bottomRight,
                                  colors: [
                                    Colors.blue.withOpacity(1.0),
                                    Colors.blue.withOpacity(0.3),
                                  ])
                          ),
                          alignment: Alignment.center,
                          child: const Text('レゲエ', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text('ポップ', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text('ロック', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        ),

                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text('カントリー', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        ),

                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text('R&B', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        ),

                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text('ジャズ', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        ),

                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text('メタル', style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                        ),
                      ],
                    ),
                  )
                ]
            )
        ),

        bottomNavigationBar: BottomNavigationBar(
          items:  const <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
            ),
           BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: '検索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play_outlined),
              label: 'プレイリスト',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'アカウント'
            ),
          ],
          selectedIconTheme: IconThemeData(
            size: 30,
            color: Colors.white,
          ),
          unselectedIconTheme: IconThemeData(
            size: 30,
            color: Colors.grey,
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff404040),
        ),

      );
    }
  }



