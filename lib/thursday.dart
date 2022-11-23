import 'package:flutter/material.dart';
import 'package:simple/friday.dart';
import 'package:simple/wednesday.dart';

class Thursday extends StatefulWidget {
  const Thursday({Key? key}) : super(key: key);

  @override
  State<Thursday> createState() => _ThursdayState();
}

class _ThursdayState extends State<Thursday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Wednesday();
                    }));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 40,
                  )),
              const Text(
                "Thursday",
                style: TextStyle(fontSize: 40, color: Colors.indigo),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Friday();
                    }));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 40,
                  )),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SingleChildScrollView(

                padding: EdgeInsets.all(25),
                child: FittedBox(
                    child: DataTable(
                        dataRowColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        headingRowColor: MaterialStateColor.resolveWith(
                            (states) => Colors.amber),
                        dataRowHeight: 120,
                        border:
                            TableBorder.all(width: 3, color: Colors.black26),
                        columns: const [
                  DataColumn(
                      label: Text("Subject",
                          style:
                              TextStyle(color: Colors.indigo, fontSize: 35))),
                  DataColumn(
                      label: Text("Time",
                          style: TextStyle(color: Colors.indigo, fontSize: 35)))
                ],
                        rows: [
                  DataRow(cells: [
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "PH19003\nJC Bose\nLab.Complex",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "9:00-9:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "PH19003\nJC Bose\nLab.Complex",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "10:00-10:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "PH19003\nJC Bose\nLab.Complex",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "11:00-11:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "ME11003\nNR211",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "3:00-3:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "ME11003\nNR211",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "4:00-4:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                  ]),
                ]))),
          ),
        ],
      ),
    );
  }
}
