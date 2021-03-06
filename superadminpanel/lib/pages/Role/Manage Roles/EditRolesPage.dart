import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_table/responsive_table.dart';
import 'package:superadminpanel/widgets/dashboard/CustomPageView.dart';
import 'package:superadminpanel/widgets/MainForm/MainForm.dart';
import 'package:superadminpanel/widgets/Table/SimplifiedCustomResponsiveTable.dart';
import 'package:superadminpanel/widgets/dashboard/app_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../constants/PageTitles.dart';

class EditRolesPagePage extends StatefulWidget {
  EditRolesPagePage({Key? key}) : super(key: key);

  @override
  State<EditRolesPagePage> createState() => _EditRolesPagePageState();
}

class _EditRolesPagePageState extends State<EditRolesPagePage> {
  TextEditingController descriptionTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: [
        PageTitles.role,
        PageTitles.manageRoles,
        PageTitles.editRoles
      ],
      body: CustomPageView(
        items: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Center(
              child: MainForm(
                isHeaderAvailable: false,
                buttons: [],
                textFieldItems: [
                  [
                    "Description",
                    "TextField",
                    descriptionTextEditingController,
                    true,
                    false,
                  ],
                  [
                    "",
                    "Table",
                    [
                      [
                        ["Label", "Privilege Description", false, true],
                        ["Label", "Code", false, true],
                        ["Label", "Action", false, true],
                      ],
                      [
                        ["Label", "Configure Account Type", false, false],
                        ["Label", "2017", false, false],
                        ["CheckBox", false, (vale) {}]
                      ],
                      [
                        ["Label", "Configure Account Type", false, false],
                        ["Label", "2017", false, false],
                        ["CheckBox", false, (vale) {}]
                      ],
                    ],
                  ],
                ],
                topic: 'User Status',
                topicBackgroundColor: Colors.blue[100],
                topicTextColor: Colors.blue[150],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
