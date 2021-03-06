import 'package:flutter/material.dart';
import 'package:superadminpanel/pages/Admin%20User%20Management/Admin%20User%20Approval/AdminUserApprovalPage.dart';
import 'package:superadminpanel/pages/Admin%20User%20Management/Admin%20User%20Update/AdminUserUpdate.dart';
import 'package:superadminpanel/pages/Admin%20User%20Management/Create%20Admin%20User/CreateAdminUserPage.dart';
import 'package:superadminpanel/pages/Admin%20User%20Management/Manage%20Banking%20Users/ManageBankingUsersPage.dart';
import 'package:superadminpanel/pages/Admin%20User%20Management/admin%20User%20Approval%20Queue/adminUserApprovalQueuePage.dart';
import 'package:superadminpanel/pages/Mobile%20Device%20Management/Device%20Configurations/DeviceConfigurationsPage.dart';
import 'package:superadminpanel/pages/Mobile%20Device%20Management/Manage%20Devices/ManageDevicesPage.dart';
import 'package:superadminpanel/pages/Role/Create%20Privilage/CreatePrivilagePage.dart';
import 'package:superadminpanel/pages/Role/Manage%20Roles/EditRolesPage.dart';
import 'package:superadminpanel/pages/Role/Manage%20Roles/ManageRolesPage.dart';
import 'package:superadminpanel/pages/Role/View%20Privilege/ViewPrivilegesPage.dart';
import 'package:superadminpanel/pages/Settings/Bank%20Setting/BankSettingPage.dart';
import 'package:superadminpanel/pages/Settings/Change%20Password/ChangePasswordPage.dart';
import 'package:superadminpanel/pages/Settings/Configure%20Account%20Type/ConfigureAccountTypePage.dart';
import 'package:superadminpanel/pages/Settings/Create%20Account%20Type/CreateAccountTypePage.dart';
import 'package:superadminpanel/pages/Settings/Manage%20Account%20Type/ManageAccountTypePage.dart';
import 'package:superadminpanel/pages/Settings/Schedular%20Notifier/SchedularNotifierPage.dart';
import 'package:superadminpanel/pages/Settings/User%20Group%20Limits/CreateUserGroupLimitsPage.dart';
import 'package:superadminpanel/pages/Settings/User%20Group%20Limits/UserGroupLimitsPage.dart';
import 'package:superadminpanel/pages/System%20Configuration/Common%20Configuration/CommonConfigurationPage.dart';
import 'package:superadminpanel/pages/System%20Configuration/EMail%20Configuration/EMailConfigurationPage.dart';
import 'package:superadminpanel/pages/System%20Configuration/Global%20Switch/GlobalSwitchPage.dart';
import 'package:superadminpanel/pages/System%20Configuration/Pay%20Anyone%20Configuration/PayAnyoneConfigurationPage.dart';
import 'package:superadminpanel/pages/System%20Configuration/Security%20View%20Configuration/SecurityViewConfigurationPage.dart';
import 'package:superadminpanel/pages/System%20Configuration/Sms%20Configuration/SmsConfigurationPage.dart';
import 'package:superadminpanel/pages/User/Login.dart';
import 'constants/RouteNames.dart';
import 'pages/Admin%20User%20Management/Manage%20Admin%20Users/ManageAdminUsersPage.dart';
import 'widgets/dashboard/app_route_observer.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Super Admin Dashboard',
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: [
          const ResponsiveBreakpoint.resize(350, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(600, name: TABLET),
          const ResponsiveBreakpoint.resize(800, name: 'DESKTOPMINI'),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: PageTransitionsTheme(
          // makes all platforms that can run Flutter apps display routes without any animation
          builders: Map<TargetPlatform,
                  _InanimatePageTransitionsBuilder>.fromIterable(
              TargetPlatform.values.toList(),
              key: (dynamic k) => k,
              value: (dynamic _) => const _InanimatePageTransitionsBuilder()),
        ),
      ),
      initialRoute: RouteNames.login,
      navigatorObservers: [AppRouteObserver()],
      routes: {
        //User
        RouteNames.login: (_) => LoginPage(),
        //Admin user management
        RouteNames.manageAdminUsers: (_) => MangeAdminUsersPage(),
        RouteNames.adminUserUpdate: (_) => AdminUserUpdate(),
        RouteNames.manageBankingUsers: (_) => ManageBankingUsersPage(),
        RouteNames.createAdminUser: (_) => CreateAdminUserPage(),
        RouteNames.adminUserApprovalQueue: (_) => AdminUserApprovalQueuePage(),
        RouteNames.adminUserApproval: (_) => AdminUserApprovalPage(),
        //Setting
        RouteNames.changePassword: (_) => ChangePasswordPage(),
        RouteNames.bankSetting: (_) => BankSettingPage(),
        RouteNames.userGroupLimits: (_) => UserGroupLimitsPage(),
        RouteNames.createUserGroupLimits: (_) => CreateUserGroupLimitsPage(),
        RouteNames.createAccountType: (_) => CreateAccountTypePage(),
        RouteNames.configureAccountType: (_) => ConfigureAccountTypePage(),
        RouteNames.manageAccountType: (_) => ManageAccountTypePage(),
        RouteNames.schedularNotifier: (_) => SchedularNotifierPage(),
        //Role
        RouteNames.manageRoles: (_) => ManageRolesPage(),
        RouteNames.editRoles: (_) => EditRolesPagePage(),
        RouteNames.viewPrivileges: (_) => ViewPrivilegesPagePage(),
        RouteNames.createPrivileges: (_) => CreatePrivilagePage(),
        //System configuration
        RouteNames.globalSwitch: (_) => GlobalSwitchPage(),
        RouteNames.smsConfiguration: (_) => SmsConfigurationPage(),
        RouteNames.emailConfiguration: (_) => EMailConfigurationPage(),
        RouteNames.payAnyoneConfiguration: (_) => PayAnyoneConfigurationPage(),
        RouteNames.securityViewConfiguration: (_) =>
            SecurityViewConfigurationPage(),
        RouteNames.commonConfiguration: (_) => CommonConfigurationPage(),
        //Mobile Device Management
        RouteNames.deviceConfigurations: (_) => DeviceConfigurationsPage(),
        RouteNames.manageDevices: (_) => ManageDevicesPage(),
      },
    );
  }
}

/// This class is used to build page transitions that don't have any animation
class _InanimatePageTransitionsBuilder extends PageTransitionsBuilder {
  const _InanimatePageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child;
  }
}
