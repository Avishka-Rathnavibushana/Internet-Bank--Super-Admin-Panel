import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_table/responsive_table.dart';
import 'package:superadminpanel/constants/colors.dart';
import 'package:superadminpanel/widgets/CustomLabelContainer.dart';
import 'package:superadminpanel/widgets/dashboard/CustomPageView.dart';
import 'package:superadminpanel/widgets/MainForm/MainForm.dart';
import 'package:superadminpanel/widgets/Table/SimplifiedCustomResponsiveTable.dart';
import 'package:superadminpanel/widgets/dashboard/app_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../constants/PageTitles.dart';

class PayAnyoneConfigurationPage extends StatefulWidget {
  PayAnyoneConfigurationPage({Key? key}) : super(key: key);

  @override
  State<PayAnyoneConfigurationPage> createState() =>
      _PayAnyoneConfigurationPageState();
}

class _PayAnyoneConfigurationPageState
    extends State<PayAnyoneConfigurationPage> {
  String payAnyone = "Activate";
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: [
        PageTitles.systemConfiguration,
        PageTitles.payAnyoneConfigurationPageTopic
      ],
      body: CustomPageView(
        items: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomLabelContainer(
                    text: "Pay Anyone Activate/Deactivate Configurations"),
                Center(
                  child: MainForm(
                    buttons: [
                      [
                        "Submit",
                        () => {print("1")},
                        AppColors.buttonLightGreenColor,
                        AppColors.white,
                      ],
                    ],
                    textFieldItems: [
                      [
                        "",
                        "Table",
                        [
                          [
                            ["Label", "", false, true],
                            ["Label", "Activate", false, true],
                            ["Label", "Deactivate", false, true],
                          ],
                          [
                            ["Label", "PAY_ANYONE", false, false],
                            [
                              "Radio",
                              "Activate",
                              (value) {
                                setState(() {
                                  payAnyone = value;
                                });
                              },
                              payAnyone
                            ],
                            [
                              "Radio",
                              "Deactivate",
                              (value) {
                                setState(() {
                                  payAnyone = "Deactivate";
                                });
                              },
                              payAnyone
                            ],
                          ],
                        ],
                      ],
                    ],
                    topic: '',
                    isHeaderAvailable: false,
                    topicBackgroundColor: Colors.blue[100],
                    topicTextColor: Colors.blue[150],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
