import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_table/responsive_table.dart';
import 'package:superadminpanel/constants/colors.dart';
import 'package:superadminpanel/widgets/dashboard/CustomPageView.dart';
import 'package:superadminpanel/widgets/MainForm/MainForm.dart';
import 'package:superadminpanel/widgets/Table/SimplifiedCustomResponsiveTable.dart';
import 'package:superadminpanel/widgets/dashboard/app_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../constants/PageTitles.dart';

class AdminUserApprovalPage extends StatefulWidget {
  AdminUserApprovalPage({Key? key}) : super(key: key);

  @override
  State<AdminUserApprovalPage> createState() => _AdminUserApprovalPageState();
}

class _AdminUserApprovalPageState extends State<AdminUserApprovalPage> {
  TextEditingController commentTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: [
        PageTitles.adminUserManagement,
        PageTitles.adminUserApprovalQueue,
        PageTitles.adminUserApproval
      ],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: CustomPageView(
            items: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: MainForm(
                  buttons: [],
                  textFieldItems: [
                    [
                      "",
                      "Table",
                      [
                        [
                          ["Label", "Title", false, true],
                          ["Label", "MISS", false, true]
                        ],
                        [
                          ["Label", "Title", false, false],
                          ["Label", "MISS", false, false]
                        ],
                        [
                          ["Label", "Title", false, false],
                          ["Label", "MISS", false, false]
                        ],
                      ],
                    ],
                  ],
                  topic: 'Personal Details',
                  topicBackgroundColor: Colors.blue[100],
                  topicTextColor: Colors.blue[150],
                ),
              ),
              ResponsiveRowColumnItem(
                child: SizedBox(
                  height: 20,
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: MainForm(
                  buttons: [
                    [
                      "Approve",
                      () => {print("1")},
                      AppColors.buttonLightGreenColor,
                      AppColors.white,
                    ],
                    [
                      "Reject",
                      () => {print("1")},
                      Colors.red[200],
                      AppColors.white,
                    ],
                  ],
                  textFieldItems: [
                    [
                      "Admin Comment",
                      "TextArea",
                      commentTextEditingController,
                      3,
                      true,
                      true,
                    ],
                  ],
                  topic: 'Action',
                  topicBackgroundColor: Colors.blue[100],
                  topicTextColor: Colors.blue[150],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
