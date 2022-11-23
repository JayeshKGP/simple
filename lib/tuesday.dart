import 'package:flutter/material.dart';
import 'package:simple/monday.dart';
import 'package:simple/wednesday.dart';

class Tuesday extends StatefulWidget {
  const Tuesday({Key? key}) : super(key: key);

  @override
  State<Tuesday> createState() => _TuesdayState();
}

class _TuesdayState extends State<Tuesday> {
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
                      return const Monday();
                    }));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 40,
                  )),
              const Text(
                "Tuesday",
                style: TextStyle(fontSize: 40, color: Colors.indigo),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return const Wednesday();
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
                dataRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.white),
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.amber),
                dataRowHeight: 80,
                border: TableBorder.all(width: 3, color: Colors.black26),
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
                        "MA11003\nNR211",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "8:00-8:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "MA11003\nNR211",
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
                        "PH11003\nNR211",
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
                        "PH11003\nNR211",
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
                        "EE11003\nNR211",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "2:00-2:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                      width: double.infinity,
                      child: const Text(
                        "EE11003\nNR211",
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
                ]),
          ))),
        ],
      ),
    );
  }
}
