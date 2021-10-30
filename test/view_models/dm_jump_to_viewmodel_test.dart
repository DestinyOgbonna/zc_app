import 'package:flutter_test/flutter_test.dart';
<<<<<<< HEAD
import 'package:zurichat/ui/view/dm_jump_to_view/dm_jump_to_viewmodel.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('dmJumpToViewModelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());
    group('initialise -', () {
      test('users list initializes with empty', () async {
        final model = DmJumpToViewModel();
        expect(model.userSearch.isEmpty, true);
      });

      test('channels list initializes with empty', () async {
        final model = DmJumpToViewModel();
        expect(model.allChannelsSearch.isEmpty, true);
      });
=======
import 'package:zurichat/ui/view/jump_to_view/jump_to_viewmodel.dart';

import '../helpers/test_helpers.dart';

//TODO test properly
void main() {
  group('JumpToViewModelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());
    group('initialise -', () {
      test('users list initializes with empty', () async {});

      test('channels list initializes with empty', () async {});
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
    });

    group('api calls -', () {
      test('When called, check if users list is not empty', () async {
<<<<<<< HEAD
        final model = DmJumpToViewModel();
=======
        final model = JumpToViewModel();
     
        //TODO write test properly
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
        await model.fetchUsers();
        expect(model.userSearch.isNotEmpty, true);
      });

      test('When called, check if channels list is not empty', () async {
<<<<<<< HEAD
        final model = DmJumpToViewModel();
=======
        final model = JumpToViewModel();

     
        //TODO write test properly
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6
        await model.fetchChannels();
        expect(model.allChannelsSearch.isNotEmpty, true);
      });
    });
  });
}
