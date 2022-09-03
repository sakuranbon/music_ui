
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff404040),

      appBar: AppBar(
        title: const Text('ホーム',style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: const Color(0xff5e5d5d),
        actions: const [
          Icon(Icons.search_off_outlined)
        ],
      ),

      body:
      SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    child: const Text('あなたへのおすすめ ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),

                  const Spacer(),

                  Padding(padding: EdgeInsets.only(right: 10,)),
                  Container(
                      width: 30,
                      height: 30,
                      child: const Text('>',style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                  ),

                ],
              ),

              const SizedBox(
                height: 10,
              ),

              SizedBox(
                width: 500,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 5)),
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
                                    ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context){return const Page1();})),
                                child: Image.network('https://images-fe.ssl-images-amazon.com/images/I/51zE1z4ThsL._SL500_.jpg',
                                  fit: BoxFit.cover,),),
                            ),
                            const Text('さくらぼっち',style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,)),
                            const Text('コアラモード',style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),),
                          ]
                        ),
                    ),

                    const Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 145,
                      height: 145,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:Image.network('https://m.media-amazon.com/images/I/61GZ4s+h1IL._SS500_.jpg',
                              fit: BoxFit.cover,),),
                          const Text('黄昏インザスパイ',style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),),
                          const Text('Unison Square Garden',style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                    ),

                    const Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: 140,
                      height: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Padding(padding: EdgeInsets.only(left: 5)),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:Image.network('https://i.kfs.io/album/global/95375629,2v1/fit/500x500.jpg',
                              fit: BoxFit.cover,),),
                          const Text('ハルカ',style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),),
                          const Text('YOASOBI',style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),),
                        ],
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
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                  Spacer(),

                  Padding(padding: EdgeInsets.only(right: 10)),
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Text('>',style: TextStyle(
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
                child:GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7,


                  children:[
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
                      child: const Text('クラシック',style: TextStyle(
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
                      child: const Text('レゲエ',style: TextStyle(
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
                      child: const Text('ポップ',style: TextStyle(
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
                      child: const Text('ロック',style: TextStyle(
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
                      child: const Text('カントリー',style: TextStyle(
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
                      child: const Text('R&B',style: TextStyle(
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
                      child: const Text('ジャズ',style: TextStyle(
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
                      child: const Text('メタル',style: TextStyle(
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '検索',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.playlist_play),
            label: 'プレイリスト',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'アカウント',
          ),
        ],
        showUnselectedLabels: true,
        backgroundColor: const Color(0xff404040),
    ),

    );
  }
}


