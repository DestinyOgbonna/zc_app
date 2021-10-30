import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

<<<<<<< HEAD
import 'package:zurichat/ui/shared/zuri_loader.dart';
import 'package:zurichat/ui/shared/zuri_appbar.dart';
=======
import 'package:zurichat/ui/shared/dumb_widgets/zuri_loader.dart';
import 'package:zurichat/ui/shared/dumb_widgets/zuri_appbar.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
import 'package:stacked/stacked.dart';
import 'create_organization_viewmodel.dart';
import 'company.dart';
import 'invite.dart';
import 'project.dart';

class CreateOrganization extends HookWidget {
  //The users email address can be passed in here from the api or database
  final String email;
  const CreateOrganization({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final bool _dark = Theme.of(context).brightness == Brightness.dark;
<<<<<<< HEAD
    
=======

>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    return ViewModelBuilder<CreateOrganizationViewModel>.reactive(
      viewModelBuilder: () => CreateOrganizationViewModel(),
      onModelReady: (model) => model.init(email),
      builder: (context, model, child) => Scaffold(
        appBar: ZuriAppBar(
            whiteBackground: true,
            isDarkMode: _dark,
            leadingPress: () => model.back(),
            leading: Icons.close_outlined),
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: PageView(
                controller: pageController,
                allowImplicitScrolling: false,
                children: [
                  CompanyPage(pageController: pageController),
                  ProjectPage(pageController: pageController),
                  InvitePage(pageController: pageController),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Visibility(
                visible: model.isBusy,
                child: const Center(
                  child: ZuriLoader(),
                ),
                replacement: Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
