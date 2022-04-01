import 'package:responsive_table/responsive_table.dart';
import 'package:superadminpanel/widgets/MainForm.dart';
import 'package:superadminpanel/widgets/Table/SimplifiedCustomResponsiveTable.dart';
import 'package:superadminpanel/widgets/dashboard/app_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../constants/PageTitles.dart';

class MangeAdminUsersPage extends StatefulWidget {
  MangeAdminUsersPage({Key? key}) : super(key: key);

  @override
  State<MangeAdminUsersPage> createState() => _MangeAdminUsersPageState();
}

class _MangeAdminUsersPageState extends State<MangeAdminUsersPage> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController firstNameTextEditingController =
      TextEditingController();
  TextEditingController employeeIdTextEditingController =
      TextEditingController();
  String status = "- Select an option -";


  // table data
  List<Map<String, dynamic>> data = [
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    },
    {
      "username": "Avishka",
      "employeeid": "00001520",
      "title": "MR",
      "firstname": "Avishka",
      "lastname": "Rathnavibushana",
    }
  ];

  List<DatatableHeader> headers = [
    DatatableHeader(
        text: "User Name",
        value: "username",
        show: true,
        sortable: true,
        flex: 2,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Employee Id",
        value: "employeeid",
        show: true,
        sortable: true,
        flex: 2,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Title",
        value: "title",
        show: true,
        sortable: true,
        flex: 1,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "First Name",
        value: "firstname",
        show: true,
        sortable: true,
        flex: 2,
        textAlign: TextAlign.left),
    DatatableHeader(
        text: "Last Name",
        value: "lastname",
        show: true,
        sortable: true,
        flex: 2,
        textAlign: TextAlign.left),
  ];
  
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: PageTitles.manageAdminUsers,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: MainForm(
                    buttons: [
                      [
                        "Search",
                        () => {print("1")},
                        Colors.green[200],
                        Colors.white,
                      ],
                      [
                        "Reset",
                        () => {print("2")},
                        Colors.grey[700],
                        Colors.white,
                      ]
                    ],
                    textFieldItems: [
                      [
                        "User Name",
                        "TextField",
                        userNameTextEditingController,
                      ],
                      [
                        "First Name",
                        "TextField",
                        firstNameTextEditingController,
                      ],
                      [
                        "Emlpoyee Id",
                        "TextField",
                        employeeIdTextEditingController,
                      ],
                      [
                        "Status",
                        "DropDownTextField",
                        ["- Select an option -", "MR", "MRS", "MS"],
                        status,
                        (value) {
                          setState(() {
                            status = value!;
                          });
                        },
                      ]
                    ],
                    topic: 'Filter',
                    topicBackgroundColor: Colors.blue[100],
                    topicTextColor: Colors.blue[150],
                  )),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SimplifiedCustomResponsiveTable(
                    footerBackgroundColor: Colors.grey[300]!,
                    headerDecoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    headers: headers,
                    rightClickActions: [
                      [
                        "Edit",
                        1,
                        (data) {
                          print(data["username"]);
                        }
                      ],
                      [
                        "Change Password",
                        2,
                        (data) {
                          print(data["title"]);
                        }
                      ],
                    ],
                    rightClickable: true,
                    title: Text(
                      "Admin Users",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    titleBackgroundColor: Colors.blue[100]!,
                    searchKey: "id",
                    data: data,
                  ) ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
