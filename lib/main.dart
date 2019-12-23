import 'package:flutter/material.dart';
import 'customw.dart';

void main(){
  runApp(new MaterialApp(home: new Application10(),));
}

//Aula 2 StatelessWidget
class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Stateless Widget',
      home: new Scaffold(
        body: new Container(
          color: Colors.pink,
          child: new Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(30.0),
          ),
        ),
      ),
    );
  }
}

// Aula 3 StatefulWidget
class application2 extends StatefulWidget{
  @override
  _applicationState createState() => new _applicationState();
}

class _applicationState extends State<application2>{

  String ttext = '';

  @override
  void initState(){
      ttext = 'Clique neste botão';
      super.initState();
  }

  void method1(){
    setState(() {
      ttext = 'O texto está mudado';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Stateful Widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(onPressed:(){method1();}, child: new Text(ttext),),
        ),
      ),
    );
  }
}

// Aula 4
class application3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          child: new Text('Este é meu Container'),
          height: 300.0,
          width: 300.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            color: Colors.green
          ),
          //transform: new Matrix4.rotationZ(0.5),
          foregroundDecoration: new BoxDecoration(
            color: Colors.deepOrange
          ),
        ),
      ),
    );
  }
}
// Aula 5
class Application extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Minha Aplicação",
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Linha e Coluna'),),
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Isto '),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('Esta '),
                new Text('é '),
                new Text('uma '),
                new Text('Coluna '),
              ],
            ),
            new Text('uma linha'),
          ],
        ),
      ),
    );
  }
}

// Aula 6
class Application4 extends StatefulWidget{
  @override
  _ApplicationState4 createState() => new _ApplicationState4();
}

class _ApplicationState4 extends State<Application4>{

  List<int> items = new List();

  @override
  void initState() {
    // TODO: implement initState
    for(int i=0;i<50;i++){
      items.add(i);
    }
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Dummy Application",
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Lista de Ferramentas'),),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index){
            return new ListTile(
              title: new Text('item no : $index'),
              trailing: new Icon(Icons.arrow_forward),
            );
          })
      ),
    );
  }
  
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new MaterialApp(
//      title: "Dummy Application",
//      home: new Scaffold(
//        appBar: new AppBar(title: new Text('Lista Ferramentas'),),
//        body: new ListView(
//          children: <Widget>[
//            new ListTile(
//              title: new Text('item 1'),
//              trailing: new Icon(Icons.arrow_forward),
//            ),
//            new ListTile(
//              title: new Text('item 2'),
//              trailing: new Icon(Icons.arrow_forward),
//            ),
//            new ListTile(
//              title: new Text('item 3'),
//              trailing: new Icon(Icons.arrow_forward),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
}

class Application5 extends StatefulWidget{
  @override
  _ApplicationState5 createState() => new _ApplicationState5();
}

class _ApplicationState5 extends State<Application5>{
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          new Card(color: Colors.yellow,child: new Padding(padding: const EdgeInsets.all(200.0)),),
          new Card(color: Colors.red,child: new Padding(padding: const EdgeInsets.all(100.0)),),
          new Card(color: Colors.green,child: new Padding(padding: const EdgeInsets.all(50.0)),),
          new Card(color: Colors.blue,child: new Padding(padding: const EdgeInsets.all(30.0)),),
          new Card(color: Colors.brown,child: new Padding(padding: const EdgeInsets.all(10.0)),),
        ],
      ),
    );
  }
}

class Application6 extends StatefulWidget{
  @override
  _ApplicationState6 createState() => new _ApplicationState6();
}

class _ApplicationState6 extends State<Application6>{

  List<int> _items = new List();

  @override
  void initState(){
    for(int i=0;i<50;i++){
      _items.add(i);
    }
  }

  Widget build(BuildContext context){
    return new Scaffold(
      body: new GridView.builder(
        itemCount: _items.length,
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index){
            return new Card(
              color: Colors.blue,
              child: new Padding(padding: const EdgeInsets.all(20.0)),
            );
          }),
    );
  }
}

class Application7 extends StatefulWidget{
  @override
  _ApplicationState7 createState() => new _ApplicationState7();
}

class _ApplicationState7 extends State<Application7>{
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text('AppBar Widget'),
        //centerTitle: true,
        titleSpacing: 80.0,
        elevation: 30.0,
        toolbarOpacity: 0.5,
      ),
    );
  }
}

class Application8 extends StatefulWidget{
  @override
  _ApplicationState8 createState() => new _ApplicationState8();
}

class _ApplicationState8 extends State<Application8>{

  String mtext = ' ';

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Appbar Widget'),
        leading: new Icon(Icons.menu),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.arrow_forward), onPressed: (){setState(() {
            mtext = 'Esta é um icone botão flecha';
          });}),
          new IconButton(icon: new Icon(Icons.close),
            onPressed: (){
              setState(() {
                mtext = 'Este é um botão de fechar';
              });
            },
          ),
        ],
      ),
      body: new Center(
        child: new Text(mtext),
      ),
    );
  }
}

class Application9 extends StatefulWidget{
  @override
  _ApplicationState9 createState() => new _ApplicationState9();
}

class _ApplicationState9 extends State<Application9> with SingleTickerProviderStateMixin{

  TabController _tcontrol;

  void initState(){
    _tcontrol = new TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('tabbar'),
        bottom: new TabBar(
          controller: _tcontrol,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.supervisor_account),),
            new Tab(icon: new Icon(Icons.close),),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tcontrol,
        children: <Widget>[
          new Center(child: new Text('Seja Bem Vindo para pagina Home'),),
          new Center(child: new Text('Seja Bem Vindo para pagina Perfil'),),
          new Center(child: new Text('Seja Bem Vindo para pagina Fechar'),),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: _tcontrol,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),),
            new Tab(icon: new Icon(Icons.supervisor_account),),
            new Tab(icon: new Icon(Icons.close),),
          ],
        ),
      ),
    );
  }
}

class Application10 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Custom Widgets',
      home: new Scaffold(
        body: new customwidgets(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
