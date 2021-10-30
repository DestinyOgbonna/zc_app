import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zurichat/ui/nav_pages/plugin_page/widgets/custom_appbar.dart';
import 'package:zurichat/ui/nav_pages/plugin_page/widgets/custom_plugin_list_tile.dart';
import 'package:zurichat/ui/nav_pages/plugin_page/widgets/custom_search_field.dart';
import '../../../app/app.logger.dart';


<<<<<<< HEAD
import 'plugin_viewmodel.dart';

class AddPluginView extends StatelessWidget {
  final log = getLogger('AddPluginView');
  AddPluginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PluginViewModel>.reactive(
      viewModelBuilder: () => PluginViewModel(),
      builder: (BuildContext context, PluginViewModel model, Widget? child) {
        return Scaffold(
          appBar: CustomAppBars(
            appbarTitle: 'Add Plugin',
            appbarAction: 'Add',
            model: model.navigateToPlugins(),
          ),
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 24.0),
            child: Column(
              children: [
                const SizedBox(
                    height: 40.0,
                    child: CustomSearchField(
                      searchHint: 'Search people to add',
                    )),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomPluginPageListTile(
                        leadingIcon: SvgPicture.asset(
                          'assets/plugin_icons/plugin_msg_icon.svg',
                          width: 20,
                        ),
                        text: 'Quick message plugin',

                        //TODO change color to brand colors
                        textColor: const Color(0xFF242424),
                      ),
                    ),
                    SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: Checkbox(
                        checkColor: Colors.white,
                        value: model.checked,
                        onChanged: (bool? value) {
                          model.setChecked(value!);
                          log.i(value);
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        );
      },
    );
  }
}
=======
import 'add_plugin_viewmodel.dart';

class AddPluginView extends StatelessWidget {
 const AddPluginView({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<AddPluginViewModel>.reactive(
     builder: (context, model, child) => const Scaffold(),
     viewModelBuilder: () => AddPluginViewModel(),
   );
 }
}
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
