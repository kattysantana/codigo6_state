import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ";

  double fontSize = 12.0;

  double redValue = 30.0;
  double greenValue = 30.0;
  double blueValue = 40.0;
  List<String> images=["https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/2659475/pexels-photo-2659475.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1643130/pexels-photo-1643130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/758742/pexels-photo-758742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",];



  void showMessage() {
    print("el mesaje es $message");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontSize: fontSize,
                  color: Color.fromRGBO(redValue.toInt(), greenValue.toInt(),
                      blueValue.toInt(), 1),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  fontSize = fontSize + 1;
                  setState(() {});
                },
                child: Text(
                  "update",
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text("valor del slider $redValue"),
              Slider(
                value: redValue,
                min: 0,
                max: 200,
                thumbColor: Colors.red,
                activeColor: Colors.amber,
                inactiveColor: Colors.indigo,
                onChanged: (double matasquita) {
                  redValue = matasquita;
                  setState(() {});
                  print(redValue);
                },
              ),
              Text("valor del slider $greenValue"),
              Slider(
                value: greenValue,
                min: 0,
                max: 200,
                thumbColor: Colors.red,
                activeColor: Colors.amber,
                inactiveColor: Colors.indigo,
                onChanged: (double matasquita) {
                  greenValue = matasquita;
                  setState(() {});
                  print(greenValue);
                },
              ),
              Text("valor del slider $blueValue"),
              Slider(
                value: blueValue,
                min: 0,
                max: 200,
                thumbColor: Colors.red,
                activeColor: Colors.amber,
                inactiveColor: Colors.indigo,
                onChanged: (double matasquita) {
                  blueValue = matasquita;
                  setState(() {});
                  print(blueValue);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
               images[1],
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("anterior"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("siguiente"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
