import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/gazou.png')
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2), // 背景に半透明の黒色を設定
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // 上部に配置
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.3), // 少し中央より下に配置
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Qiita Feed App',
                    style: TextStyle(
                      fontSize: 40.0, // 任意のサイズ
                      color: Colors.white,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Center(
                  child: Text(
                    '-PlayGround-',
                    style: TextStyle(
                      fontSize: 20.0, // 任意のサイズ
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()), // 中央より上に配置するための空のコンテナ
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // ログインボタンが押されたときの処理
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), // 丸い形状にする
                    ),
                    backgroundColor: Colors.green[900], // ボタンの背景色を深緑色に設定
                  ),
                  child: Text('ログイン'),
                ),
              ),
              TextButton(
                onPressed: () {
                  // 「ログインせずに利用する」ボタンが押されたときの処理
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, // テキストの色を白色に設定
                ),
                child: Text('ログインせずに利用する'),
              ),
              SizedBox(height: 70.0), // ログインボタンと「ログインせずに利用する」ボタンの下に空白を追加
            ],
          ),
        ],
      ),
    );
  }
}
