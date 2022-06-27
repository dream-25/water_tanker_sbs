import 'package:flutter/material.dart';
import 'package:phedtanker/screens/data/users.dart';
import 'package:phedtanker/screens/model/user.dart';
import 'package:phedtanker/screens/report_page/info.dart';
import 'package:phedtanker/screens/widget/scrollable_widget.dart';

class SortablePage extends StatefulWidget {
  @override
  _SortablePageState createState() => _SortablePageState();
}

class _SortablePageState extends State<SortablePage> {
  late List<User> users;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    this.users = List.of(allUsers);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('PHED Tanker Tracking'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const info()));
                },
                icon: const Icon(Icons.info))
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(color: Colors.purple),
          ),
        ),
        body: ScrollableWidget(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Trip List',
                style: TextStyle(fontSize: 20),
              ),
            ),
            buildDataTable(),
          ],
        )),
      );

  Widget buildDataTable() {
    final columns = [
      'Trip id',
      'Customer Name',
      'Hydrant location',
      'Filling date & time',
      'Destination location',
      'Pouring date & time',
      'Status'
    ];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(users),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<User> users) => users.map((User user) {
        final cells = [
          user.firstName,
          user.lastName,
          user.age,
          user.filling,
          user.location,
          user.Pouring,
          user.Status
        ];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.firstName, user2.firstName));
    } else if (columnIndex == 1) {
      users.sort((user1, user2) =>
          compareString(ascending, user1.lastName, user2.lastName));
    } else if (columnIndex == 2) {
      users.sort((user1, user2) =>
          compareString(ascending, '${user1.age}', '${user2.age}'));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}
