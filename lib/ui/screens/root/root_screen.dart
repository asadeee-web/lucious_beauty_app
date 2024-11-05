import 'package:flutter/material.dart';
import 'package:lucious_beauty_app/core/constants/colors.dart';
import 'package:lucious_beauty_app/core/constants/strings.dart';
import 'package:lucious_beauty_app/ui/screens/root/root_view_model.dart';
import 'package:lucious_beauty_app/ui/widgets/custom_bottom_navigatior.dart';

import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  final int? selectedScreen;
  const RootScreen({super.key, this.selectedScreen = 0});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootViewModel(selectedScreen),
      child: Consumer<RootViewModel>(
          builder: (context, model, child) => Scaffold(
                backgroundColor: whiteColor,
                body: model.allScreen[model.selectedScreen],
                bottomNavigationBar: _bottomAppbar(model),
              )),
    );

    ///
    /// Bottom Bar
    ///
  }

  Widget _bottomAppbar(RootViewModel model) {
    return BottomAppBar(
      color: whiteColor,
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 68,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomBottomNavigator(
                icon: homeIcon,
                currentIndex: model.selectedIndex,
                indexNumber: 0,
                onTap: () {
                  model.UpdatedScreen(0);
                },
              ),
              CustomBottomNavigator(
                icon: bookingIcon,
                currentIndex: model.selectedIndex,
                indexNumber: 1,
                onTap: () {
                  model.UpdatedScreen(1);
                },
              ),
              CustomBottomNavigator(
                icon: profileIcon,
                currentIndex: model.selectedIndex,
                indexNumber: 2,
                onTap: () {
                  model.UpdatedScreen(2);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
