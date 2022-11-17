import 'package:flutter/material.dart';
import 'package:counter_7/budget.dart';
import 'package:counter_7/MyDrawer.dart';

class MyDataBudgetPage extends StatefulWidget {
  const MyDataBudgetPage({super.key});

  @override
  State<MyDataBudgetPage> createState() => _MyDataBudgetPageState();
}

class _MyDataBudgetPageState extends State<MyDataBudgetPage> {
  // var temp = ListBudget.list[0].judul
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Budget'),
        ),
        drawer: const MyDrawer(),
        body: Container(
          alignment: Alignment.center,
          child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: ListBudget.list.length,
              itemBuilder: (context, index) {
                return Card(
                    child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ListBudget.list[index].judul,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 157, 255)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rp ${ListBudget.list[index].nominal}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            ListBudget.list[index].jenis,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ));
              }),
        ));
  }
}
