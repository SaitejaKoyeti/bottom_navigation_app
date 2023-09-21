import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: NavigationExample(),
  );
  }

}

class NavigationExample extends StatefulWidget{
  @override
  State<NavigationExample> createState() => _NavigationExampleState();


}

class _NavigationExampleState extends State<NavigationExample> {
    int currentindex=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){

        setState(() {
          currentindex=index;
        });
        },
        selectedIndex: currentindex,
        backgroundColor: Colors.orange[400],
        destinations: [

         NavigationDestination(icon: Icon(Icons.home_outlined),
             label:"Home", selectedIcon: Icon(Icons.home),),
          NavigationDestination(icon: Icon(Icons.school_outlined),
            label:"School", selectedIcon: Icon(Icons.school),),
          NavigationDestination(icon: Icon(Icons.business_outlined),
            label:"Business", selectedIcon: Icon(Icons.business),),
        ],
      ),
      body: <Widget> [
        Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 30)),
                Text("Signup",textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 25, color: Colors.blue, fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "First Name",
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter EmailId",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Create Password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text("Sigin Up"),
                  onPressed: () {
                    Navigator.pop(context);
                  }, ),
              ],
          ),

        ),
       Container(
         padding: EdgeInsets.only(top: 150),
          child: Image.asset("Images/ramlal.jpg")

        ),
        Container(

          color: Colors.green[400],
        ),

      ] [currentindex]

    );
  }

}




