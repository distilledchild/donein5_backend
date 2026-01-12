/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../auth/email_idp_endpoint.dart' as _i2;
import '../auth/jwt_refresh_endpoint.dart' as _i3;
import '../endpoints/member_endpoint.dart' as _i4;
import '../endpoints/user_recipe_endpoint.dart' as _i5;
import '../greetings/greeting_endpoint.dart' as _i6;
import 'package:donein5_backend_server/src/generated/user_recipe.dart' as _i7;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _i8;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _i9;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'emailIdp': _i2.EmailIdpEndpoint()
        ..initialize(
          server,
          'emailIdp',
          null,
        ),
      'jwtRefresh': _i3.JwtRefreshEndpoint()
        ..initialize(
          server,
          'jwtRefresh',
          null,
        ),
      'member': _i4.MemberEndpoint()
        ..initialize(
          server,
          'member',
          null,
        ),
      'userRecipe': _i5.UserRecipeEndpoint()
        ..initialize(
          server,
          'userRecipe',
          null,
        ),
      'greeting': _i6.GreetingEndpoint()
        ..initialize(
          server,
          'greeting',
          null,
        ),
    };
    connectors['emailIdp'] = _i1.EndpointConnector(
      name: 'emailIdp',
      endpoint: endpoints['emailIdp']!,
      methodConnectors: {
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint).login(
                session,
                email: params['email'],
                password: params['password'],
              ),
        ),
        'startRegistration': _i1.MethodConnector(
          name: 'startRegistration',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startRegistration(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyRegistrationCode': _i1.MethodConnector(
          name: 'verifyRegistrationCode',
          params: {
            'accountRequestId': _i1.ParameterDescription(
              name: 'accountRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyRegistrationCode(
                    session,
                    accountRequestId: params['accountRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishRegistration': _i1.MethodConnector(
          name: 'finishRegistration',
          params: {
            'registrationToken': _i1.ParameterDescription(
              name: 'registrationToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishRegistration(
                    session,
                    registrationToken: params['registrationToken'],
                    password: params['password'],
                  ),
        ),
        'startPasswordReset': _i1.MethodConnector(
          name: 'startPasswordReset',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .startPasswordReset(
                    session,
                    email: params['email'],
                  ),
        ),
        'verifyPasswordResetCode': _i1.MethodConnector(
          name: 'verifyPasswordResetCode',
          params: {
            'passwordResetRequestId': _i1.ParameterDescription(
              name: 'passwordResetRequestId',
              type: _i1.getType<_i1.UuidValue>(),
              nullable: false,
            ),
            'verificationCode': _i1.ParameterDescription(
              name: 'verificationCode',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .verifyPasswordResetCode(
                    session,
                    passwordResetRequestId: params['passwordResetRequestId'],
                    verificationCode: params['verificationCode'],
                  ),
        ),
        'finishPasswordReset': _i1.MethodConnector(
          name: 'finishPasswordReset',
          params: {
            'finishPasswordResetToken': _i1.ParameterDescription(
              name: 'finishPasswordResetToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newPassword': _i1.ParameterDescription(
              name: 'newPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['emailIdp'] as _i2.EmailIdpEndpoint)
                  .finishPasswordReset(
                    session,
                    finishPasswordResetToken:
                        params['finishPasswordResetToken'],
                    newPassword: params['newPassword'],
                  ),
        ),
      },
    );
    connectors['jwtRefresh'] = _i1.EndpointConnector(
      name: 'jwtRefresh',
      endpoint: endpoints['jwtRefresh']!,
      methodConnectors: {
        'refreshAccessToken': _i1.MethodConnector(
          name: 'refreshAccessToken',
          params: {
            'refreshToken': _i1.ParameterDescription(
              name: 'refreshToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['jwtRefresh'] as _i3.JwtRefreshEndpoint)
                  .refreshAccessToken(
                    session,
                    refreshToken: params['refreshToken'],
                  ),
        ),
      },
    );
    connectors['member'] = _i1.EndpointConnector(
      name: 'member',
      endpoint: endpoints['member']!,
      methodConnectors: {
        'registerWithEmail': _i1.MethodConnector(
          name: 'registerWithEmail',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'profileImage': _i1.ParameterDescription(
              name: 'profileImage',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).registerWithEmail(
                    session,
                    email: params['email'],
                    password: params['password'],
                    profileImage: params['profileImage'],
                  ),
        ),
        'loginWithEmail': _i1.MethodConnector(
          name: 'loginWithEmail',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).loginWithEmail(
                    session,
                    email: params['email'],
                    password: params['password'],
                  ),
        ),
        'findByEmail': _i1.MethodConnector(
          name: 'findByEmail',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).findByEmail(
                    session,
                    email: params['email'],
                  ),
        ),
        'registerWithGoogle': _i1.MethodConnector(
          name: 'registerWithGoogle',
          params: {
            'idToken': _i1.ParameterDescription(
              name: 'idToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'photoUrl': _i1.ParameterDescription(
              name: 'photoUrl',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['member'] as _i4.MemberEndpoint)
                  .registerWithGoogle(
                    session,
                    idToken: params['idToken'],
                    name: params['name'],
                    email: params['email'],
                    photoUrl: params['photoUrl'],
                  ),
        ),
        'registerWithFacebook': _i1.MethodConnector(
          name: 'registerWithFacebook',
          params: {
            'accessToken': _i1.ParameterDescription(
              name: 'accessToken',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'photoUrl': _i1.ParameterDescription(
              name: 'photoUrl',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['member'] as _i4.MemberEndpoint)
                  .registerWithFacebook(
                    session,
                    accessToken: params['accessToken'],
                    name: params['name'],
                    email: params['email'],
                    photoUrl: params['photoUrl'],
                  ),
        ),
        'addFavoriteFood': _i1.MethodConnector(
          name: 'addFavoriteFood',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'foodId': _i1.ParameterDescription(
              name: 'foodId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).addFavoriteFood(
                    session,
                    email: params['email'],
                    foodId: params['foodId'],
                  ),
        ),
        'updateEmail': _i1.MethodConnector(
          name: 'updateEmail',
          params: {
            'oldEmail': _i1.ParameterDescription(
              name: 'oldEmail',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newEmail': _i1.ParameterDescription(
              name: 'newEmail',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).updateEmail(
                    session,
                    oldEmail: params['oldEmail'],
                    newEmail: params['newEmail'],
                  ),
        ),
        'updatePreferences': _i1.MethodConnector(
          name: 'updatePreferences',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'dietStyle': _i1.ParameterDescription(
              name: 'dietStyle',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            ),
            'allergies': _i1.ParameterDescription(
              name: 'allergies',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            ),
            'dislikedIngredients': _i1.ParameterDescription(
              name: 'dislikedIngredients',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).updatePreferences(
                    session,
                    email: params['email'],
                    dietStyle: params['dietStyle'],
                    allergies: params['allergies'],
                    dislikedIngredients: params['dislikedIngredients'],
                  ),
        ),
        'updateFoodStyle': _i1.MethodConnector(
          name: 'updateFoodStyle',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'foodStyle': _i1.ParameterDescription(
              name: 'foodStyle',
              type: _i1.getType<List<String>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).updateFoodStyle(
                    session,
                    email: params['email'],
                    foodStyle: params['foodStyle'],
                  ),
        ),
        'updateSpicyHeat': _i1.MethodConnector(
          name: 'updateSpicyHeat',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'spice': _i1.ParameterDescription(
              name: 'spice',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'heat': _i1.ParameterDescription(
              name: 'heat',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).updateSpicyHeat(
                    session,
                    email: params['email'],
                    spice: params['spice'],
                    heat: params['heat'],
                  ),
        ),
        'updateProfile': _i1.MethodConnector(
          name: 'updateProfile',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'phone': _i1.ParameterDescription(
              name: 'phone',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'birthday': _i1.ParameterDescription(
              name: 'birthday',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'gender': _i1.ParameterDescription(
              name: 'gender',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['member'] as _i4.MemberEndpoint).updateProfile(
                    session,
                    email: params['email'],
                    phone: params['phone'],
                    birthday: params['birthday'],
                    gender: params['gender'],
                  ),
        ),
        'updateOnboardingPreferences': _i1.MethodConnector(
          name: 'updateOnboardingPreferences',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'foodStyle': _i1.ParameterDescription(
              name: 'foodStyle',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            ),
            'spiceLevel': _i1.ParameterDescription(
              name: 'spiceLevel',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'heatLevel': _i1.ParameterDescription(
              name: 'heatLevel',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'dietStyle': _i1.ParameterDescription(
              name: 'dietStyle',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            ),
            'allergies': _i1.ParameterDescription(
              name: 'allergies',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            ),
            'dislikeIngredients': _i1.ParameterDescription(
              name: 'dislikeIngredients',
              type: _i1.getType<List<String>?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['member'] as _i4.MemberEndpoint)
                  .updateOnboardingPreferences(
                    session,
                    email: params['email'],
                    foodStyle: params['foodStyle'],
                    spiceLevel: params['spiceLevel'],
                    heatLevel: params['heatLevel'],
                    dietStyle: params['dietStyle'],
                    allergies: params['allergies'],
                    dislikeIngredients: params['dislikeIngredients'],
                  ),
        ),
        'addFavoriteFoodToFolder': _i1.MethodConnector(
          name: 'addFavoriteFoodToFolder',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'foodId': _i1.ParameterDescription(
              name: 'foodId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'folderName': _i1.ParameterDescription(
              name: 'folderName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['member'] as _i4.MemberEndpoint)
                  .addFavoriteFoodToFolder(
                    session,
                    email: params['email'],
                    foodId: params['foodId'],
                    folderName: params['folderName'],
                  ),
        ),
        'createEmptyCollection': _i1.MethodConnector(
          name: 'createEmptyCollection',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'folderName': _i1.ParameterDescription(
              name: 'folderName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['member'] as _i4.MemberEndpoint)
                  .createEmptyCollection(
                    session,
                    email: params['email'],
                    folderName: params['folderName'],
                  ),
        ),
      },
    );
    connectors['userRecipe'] = _i1.EndpointConnector(
      name: 'userRecipe',
      endpoint: endpoints['userRecipe']!,
      methodConnectors: {
        'saveRecipe': _i1.MethodConnector(
          name: 'saveRecipe',
          params: {
            'recipe': _i1.ParameterDescription(
              name: 'recipe',
              type: _i1.getType<_i7.UserRecipe>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userRecipe'] as _i5.UserRecipeEndpoint)
                  .saveRecipe(
                    session,
                    recipe: params['recipe'],
                  ),
        ),
        'getRecipesByMember': _i1.MethodConnector(
          name: 'getRecipesByMember',
          params: {
            'memberId': _i1.ParameterDescription(
              name: 'memberId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userRecipe'] as _i5.UserRecipeEndpoint)
                  .getRecipesByMember(
                    session,
                    memberId: params['memberId'],
                  ),
        ),
        'getRecipeById': _i1.MethodConnector(
          name: 'getRecipeById',
          params: {
            'recipeId': _i1.ParameterDescription(
              name: 'recipeId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userRecipe'] as _i5.UserRecipeEndpoint)
                  .getRecipeById(
                    session,
                    recipeId: params['recipeId'],
                  ),
        ),
        'getRecipesByIds': _i1.MethodConnector(
          name: 'getRecipesByIds',
          params: {
            'recipeIds': _i1.ParameterDescription(
              name: 'recipeIds',
              type: _i1.getType<List<String>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userRecipe'] as _i5.UserRecipeEndpoint)
                  .getRecipesByIds(
                    session,
                    recipeIds: params['recipeIds'],
                  ),
        ),
        'deleteRecipe': _i1.MethodConnector(
          name: 'deleteRecipe',
          params: {
            'recipeId': _i1.ParameterDescription(
              name: 'recipeId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userRecipe'] as _i5.UserRecipeEndpoint)
                  .deleteRecipe(
                    session,
                    recipeId: params['recipeId'],
                  ),
        ),
      },
    );
    connectors['greeting'] = _i1.EndpointConnector(
      name: 'greeting',
      endpoint: endpoints['greeting']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['greeting'] as _i6.GreetingEndpoint).hello(
                session,
                params['name'],
              ),
        ),
      },
    );
    modules['serverpod_auth_idp'] = _i8.Endpoints()
      ..initializeEndpoints(server);
    modules['serverpod_auth_core'] = _i9.Endpoints()
      ..initializeEndpoints(server);
  }
}
