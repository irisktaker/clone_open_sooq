import 'package:get/get.dart';
import 'package:shake/shake.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:open_sooq/utils/constants/variables.dart';
import 'package:open_sooq/views/widgets/build_app_bar.dart';
import 'package:open_sooq/views/widgets/contact_bottom_sheet.dart';
import 'package:open_sooq/utils/shared/methods/shared_methods.dart';
import 'package:open_sooq/views/screens/auth/login/login_first_step/login_first_step_screen.dart';

import 'btn_nav_bar_bloc.dart';

class BtnNavBarScreen extends StatefulWidget {
  const BtnNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BtnNavBarScreen> createState() => _BtnNavBarScreenState();
}

class _BtnNavBarScreenState extends State<BtnNavBarScreen> {
  final _bloc = BtnNavBarBloc();

  @override
  void initState() {
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () async {
        if (AppVariables.isContactUsDialogOpen == false) {
          AppVariables.isContactUsDialogOpen = true;
          await contactBottomSheet(context)
              .whenComplete(() => AppVariables.isContactUsDialogOpen = false);
        }
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2.7,
    );

    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
    detector.startListening();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _bloc.currentTabIndexNotifier,
      builder: (context, data, child) {
        return Scaffold(
          appBar: data == 2
              ? null
              : buildAppBar(context, _bloc.title(data, context), data),
          body: SafeArea(
            child: IndexedStack(
              index: data,
              children: _bloc.navTabs,
            ),
          ),
          bottomNavigationBar: ConvexAppBar(
            style: TabStyle.fixedCircle,
            backgroundColor: Colors.black87,
            top: -20,
            height: 55,
            items: [
              TabItem(
                icon: Icons.home,
                title: AppLocalizations.of(context)!.bottom_tab_bar_home,
              ),
              TabItem(
                icon: Icons.message,
                title: AppLocalizations.of(context)!.bottom_tab_bar_chat,
              ),
              const TabItem(icon: Icons.add),
              TabItem(
                icon: Icons.receipt,
                title: AppLocalizations.of(context)!.bottom_tab_bar_my_post,
              ),
              TabItem(
                icon: Icons.person,
                title: AppLocalizations.of(context)!.bottom_tab_bar_profile,
              ),
            ],
            initialActiveIndex: 0,
            onTap: (int index) {
              _bloc.currentTabIndexNotifier.value = index;
              if (!SharedMethods.checkIfUserLoggedIn() && index == 1 ||
                  index == 2 ||
                  index == 3) {
                Get.to(const LoginFirstStepScreen());
              }
            },
          ),
        );
      },
    );
  }
}
