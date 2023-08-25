import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_viewmodel.dart';

class MainView extends StackedView<MainViewModel> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MainViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
    body: Center(
      child: viewModel.widgetOptions.elementAt(viewModel.selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      selectedFontSize: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: viewModel.buildIcon(Icons.home, 'Home', 0),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: viewModel.buildIcon(Icons.fax, 'Assets', 1),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: viewModel.buildIcon(Icons.fit_screen_outlined, 'Scan', 2),
          label: "",
        ),
      ],
      currentIndex: viewModel.selectedIndex,
      selectedItemColor:viewModel.selectedItemColor,
      unselectedItemColor: viewModel.unselectedBgColor,
    ),
  );
  }

  @override
  MainViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainViewModel();
}
