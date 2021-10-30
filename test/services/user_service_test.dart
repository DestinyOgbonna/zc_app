import 'package:flutter_test/flutter_test.dart';
import 'package:zurichat/app/app.locator.dart';
<<<<<<< HEAD
import 'package:zurichat/services/user_service.dart';
=======
import 'package:zurichat/services/in_review/user_service.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6

void main() {
  group('UserServiceTest -', () {
    setUpAll(() {
      setupLocator();
    });
    group('User services', () {
      test('When called, it sets value to the workspace Id', () {
        final userService = UserService();
        userService.setCurrentOrganizationId('currentOrgId');
        expect(userService.currentOrgId, 'currentOrgId');
      });
      test("When called, it sets value to the authToken, userId and userEmail.",
          () {
        final userService = UserService();
        userService.setUserAndToken(
            authToken: 'authToken',
            userId: 'user1234',
            userEmail: 'Zuri@gmail.com');
        expect(userService.authToken, 'authToken');
        expect(userService.userId, 'user1234');
        expect(userService.userEmail, 'Zuri@gmail.com');
      });
    });
  });
}
