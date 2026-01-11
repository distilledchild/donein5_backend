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
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i1;
import 'package:serverpod_client/serverpod_client.dart' as _i2;
import 'dart:async' as _i3;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i4;
import 'package:donein5_backend_client/src/protocol/member.dart' as _i5;
import 'package:donein5_backend_client/src/protocol/user_recipe.dart' as _i6;
import 'package:donein5_backend_client/src/protocol/greetings/greeting.dart'
    as _i7;
import 'protocol.dart' as _i8;

/// By extending [EmailIdpBaseEndpoint], the email identity provider endpoints
/// are made available on the server and enable the corresponding sign-in widget
/// on the client.
/// {@category Endpoint}
class EndpointEmailIdp extends _i1.EndpointEmailIdpBase {
  EndpointEmailIdp(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'emailIdp';

  /// Logs in the user and returns a new session.
  ///
  /// Throws an [EmailAccountLoginException] in case of errors, with reason:
  /// - [EmailAccountLoginExceptionReason.invalidCredentials] if the email or
  ///   password is incorrect.
  /// - [EmailAccountLoginExceptionReason.tooManyAttempts] if there have been
  ///   too many failed login attempts.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  @override
  _i3.Future<_i4.AuthSuccess> login({
    required String email,
    required String password,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'emailIdp',
    'login',
    {
      'email': email,
      'password': password,
    },
  );

  /// Starts the registration for a new user account with an email-based login
  /// associated to it.
  ///
  /// Upon successful completion of this method, an email will have been
  /// sent to [email] with a verification link, which the user must open to
  /// complete the registration.
  ///
  /// Always returns a account request ID, which can be used to complete the
  /// registration. If the email is already registered, the returned ID will not
  /// be valid.
  @override
  _i3.Future<_i2.UuidValue> startRegistration({required String email}) =>
      caller.callServerEndpoint<_i2.UuidValue>(
        'emailIdp',
        'startRegistration',
        {'email': email},
      );

  /// Verifies an account request code and returns a token
  /// that can be used to complete the account creation.
  ///
  /// Throws an [EmailAccountRequestException] in case of errors, with reason:
  /// - [EmailAccountRequestExceptionReason.expired] if the account request has
  ///   already expired.
  /// - [EmailAccountRequestExceptionReason.policyViolation] if the password
  ///   does not comply with the password policy.
  /// - [EmailAccountRequestExceptionReason.invalid] if no request exists
  ///   for the given [accountRequestId] or [verificationCode] is invalid.
  @override
  _i3.Future<String> verifyRegistrationCode({
    required _i2.UuidValue accountRequestId,
    required String verificationCode,
  }) => caller.callServerEndpoint<String>(
    'emailIdp',
    'verifyRegistrationCode',
    {
      'accountRequestId': accountRequestId,
      'verificationCode': verificationCode,
    },
  );

  /// Completes a new account registration, creating a new auth user with a
  /// profile and attaching the given email account to it.
  ///
  /// Throws an [EmailAccountRequestException] in case of errors, with reason:
  /// - [EmailAccountRequestExceptionReason.expired] if the account request has
  ///   already expired.
  /// - [EmailAccountRequestExceptionReason.policyViolation] if the password
  ///   does not comply with the password policy.
  /// - [EmailAccountRequestExceptionReason.invalid] if the [registrationToken]
  ///   is invalid.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  ///
  /// Returns a session for the newly created user.
  @override
  _i3.Future<_i4.AuthSuccess> finishRegistration({
    required String registrationToken,
    required String password,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'emailIdp',
    'finishRegistration',
    {
      'registrationToken': registrationToken,
      'password': password,
    },
  );

  /// Requests a password reset for [email].
  ///
  /// If the email address is registered, an email with reset instructions will
  /// be send out. If the email is unknown, this method will have no effect.
  ///
  /// Always returns a password reset request ID, which can be used to complete
  /// the reset. If the email is not registered, the returned ID will not be
  /// valid.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.tooManyAttempts] if the user has
  ///   made too many attempts trying to request a password reset.
  ///
  @override
  _i3.Future<_i2.UuidValue> startPasswordReset({required String email}) =>
      caller.callServerEndpoint<_i2.UuidValue>(
        'emailIdp',
        'startPasswordReset',
        {'email': email},
      );

  /// Verifies a password reset code and returns a finishPasswordResetToken
  /// that can be used to finish the password reset.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.expired] if the password reset
  ///   request has already expired.
  /// - [EmailAccountPasswordResetExceptionReason.tooManyAttempts] if the user has
  ///   made too many attempts trying to verify the password reset.
  /// - [EmailAccountPasswordResetExceptionReason.invalid] if no request exists
  ///   for the given [passwordResetRequestId] or [verificationCode] is invalid.
  ///
  /// If multiple steps are required to complete the password reset, this endpoint
  /// should be overridden to return credentials for the next step instead
  /// of the credentials for setting the password.
  @override
  _i3.Future<String> verifyPasswordResetCode({
    required _i2.UuidValue passwordResetRequestId,
    required String verificationCode,
  }) => caller.callServerEndpoint<String>(
    'emailIdp',
    'verifyPasswordResetCode',
    {
      'passwordResetRequestId': passwordResetRequestId,
      'verificationCode': verificationCode,
    },
  );

  /// Completes a password reset request by setting a new password.
  ///
  /// The [verificationCode] returned from [verifyPasswordResetCode] is used to
  /// validate the password reset request.
  ///
  /// Throws an [EmailAccountPasswordResetException] in case of errors, with reason:
  /// - [EmailAccountPasswordResetExceptionReason.expired] if the password reset
  ///   request has already expired.
  /// - [EmailAccountPasswordResetExceptionReason.policyViolation] if the new
  ///   password does not comply with the password policy.
  /// - [EmailAccountPasswordResetExceptionReason.invalid] if no request exists
  ///   for the given [passwordResetRequestId] or [verificationCode] is invalid.
  ///
  /// Throws an [AuthUserBlockedException] if the auth user is blocked.
  @override
  _i3.Future<void> finishPasswordReset({
    required String finishPasswordResetToken,
    required String newPassword,
  }) => caller.callServerEndpoint<void>(
    'emailIdp',
    'finishPasswordReset',
    {
      'finishPasswordResetToken': finishPasswordResetToken,
      'newPassword': newPassword,
    },
  );
}

/// By extending [RefreshJwtTokensEndpoint], the JWT token refresh endpoint
/// is made available on the server and enables automatic token refresh on the client.
/// {@category Endpoint}
class EndpointJwtRefresh extends _i4.EndpointRefreshJwtTokens {
  EndpointJwtRefresh(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'jwtRefresh';

  /// Creates a new token pair for the given [refreshToken].
  ///
  /// Can throw the following exceptions:
  /// -[RefreshTokenMalformedException]: refresh token is malformed and could
  ///   not be parsed. Not expected to happen for tokens issued by the server.
  /// -[RefreshTokenNotFoundException]: refresh token is unknown to the server.
  ///   Either the token was deleted or generated by a different server.
  /// -[RefreshTokenExpiredException]: refresh token has expired. Will happen
  ///   only if it has not been used within configured `refreshTokenLifetime`.
  /// -[RefreshTokenInvalidSecretException]: refresh token is incorrect, meaning
  ///   it does not refer to the current secret refresh token. This indicates
  ///   either a malfunctioning client or a malicious attempt by someone who has
  ///   obtained the refresh token. In this case the underlying refresh token
  ///   will be deleted, and access to it will expire fully when the last access
  ///   token is elapsed.
  ///
  /// This endpoint is unauthenticated, meaning the client won't include any
  /// authentication information with the call.
  @override
  _i3.Future<_i4.AuthSuccess> refreshAccessToken({
    required String refreshToken,
  }) => caller.callServerEndpoint<_i4.AuthSuccess>(
    'jwtRefresh',
    'refreshAccessToken',
    {'refreshToken': refreshToken},
    authenticated: false,
  );
}

/// {@category Endpoint}
class EndpointMember extends _i2.EndpointRef {
  EndpointMember(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'member';

  /// Register with Email
  _i3.Future<_i5.Member?> registerWithEmail({
    required String email,
    required String password,
    String? profileImage,
  }) => caller.callServerEndpoint<_i5.Member?>(
    'member',
    'registerWithEmail',
    {
      'email': email,
      'password': password,
      'profileImage': profileImage,
    },
  );

  /// Login with Email
  _i3.Future<_i5.Member?> loginWithEmail({
    required String email,
    required String password,
  }) => caller.callServerEndpoint<_i5.Member?>(
    'member',
    'loginWithEmail',
    {
      'email': email,
      'password': password,
    },
  );

  /// Find by Email
  _i3.Future<_i5.Member?> findByEmail({required String email}) =>
      caller.callServerEndpoint<_i5.Member?>(
        'member',
        'findByEmail',
        {'email': email},
      );

  /// Register with Google
  _i3.Future<_i5.Member?> registerWithGoogle({
    required String googleId,
    required String name,
    required String email,
    String? photoUrl,
  }) => caller.callServerEndpoint<_i5.Member?>(
    'member',
    'registerWithGoogle',
    {
      'googleId': googleId,
      'name': name,
      'email': email,
      'photoUrl': photoUrl,
    },
  );

  /// Register with Facebook
  _i3.Future<_i5.Member?> registerWithFacebook({
    required String facebookId,
    required String name,
    required String email,
    String? photoUrl,
  }) => caller.callServerEndpoint<_i5.Member?>(
    'member',
    'registerWithFacebook',
    {
      'facebookId': facebookId,
      'name': name,
      'email': email,
      'photoUrl': photoUrl,
    },
  );

  /// Add Favorite Food
  _i3.Future<bool> addFavoriteFood({
    required String email,
    required String foodId,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'addFavoriteFood',
    {
      'email': email,
      'foodId': foodId,
    },
  );

  /// Update Email
  _i3.Future<bool> updateEmail({
    required String oldEmail,
    required String newEmail,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'updateEmail',
    {
      'oldEmail': oldEmail,
      'newEmail': newEmail,
    },
  );

  /// Update Preferences
  _i3.Future<bool> updatePreferences({
    required String email,
    List<String>? dietStyle,
    List<String>? allergies,
    List<String>? dislikedIngredients,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'updatePreferences',
    {
      'email': email,
      'dietStyle': dietStyle,
      'allergies': allergies,
      'dislikedIngredients': dislikedIngredients,
    },
  );

  /// Update Food Style
  _i3.Future<bool> updateFoodStyle({
    required String email,
    required List<String> foodStyle,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'updateFoodStyle',
    {
      'email': email,
      'foodStyle': foodStyle,
    },
  );

  /// Update Spicy Heat
  _i3.Future<bool> updateSpicyHeat({
    required String email,
    String? spice,
    String? heat,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'updateSpicyHeat',
    {
      'email': email,
      'spice': spice,
      'heat': heat,
    },
  );

  /// Update Profile
  _i3.Future<bool> updateProfile({
    required String email,
    required String phone,
    required String birthday,
    required String gender,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'updateProfile',
    {
      'email': email,
      'phone': phone,
      'birthday': birthday,
      'gender': gender,
    },
  );

  /// Update Onboarding Preferences
  _i3.Future<bool> updateOnboardingPreferences({
    required String email,
    List<String>? foodStyle,
    String? spiceLevel,
    String? heatLevel,
    List<String>? dietStyle,
    List<String>? allergies,
    List<String>? dislikeIngredients,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'updateOnboardingPreferences',
    {
      'email': email,
      'foodStyle': foodStyle,
      'spiceLevel': spiceLevel,
      'heatLevel': heatLevel,
      'dietStyle': dietStyle,
      'allergies': allergies,
      'dislikeIngredients': dislikeIngredients,
    },
  );

  /// Add Favorite Food to Folder
  _i3.Future<bool> addFavoriteFoodToFolder({
    required String email,
    required String foodId,
    required String folderName,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'addFavoriteFoodToFolder',
    {
      'email': email,
      'foodId': foodId,
      'folderName': folderName,
    },
  );

  /// Create Empty Collection
  _i3.Future<bool> createEmptyCollection({
    required String email,
    required String folderName,
  }) => caller.callServerEndpoint<bool>(
    'member',
    'createEmptyCollection',
    {
      'email': email,
      'folderName': folderName,
    },
  );
}

/// {@category Endpoint}
class EndpointUserRecipe extends _i2.EndpointRef {
  EndpointUserRecipe(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'userRecipe';

  _i3.Future<bool> saveRecipe({required _i6.UserRecipe recipe}) =>
      caller.callServerEndpoint<bool>(
        'userRecipe',
        'saveRecipe',
        {'recipe': recipe},
      );

  _i3.Future<List<_i6.UserRecipe>> getRecipesByMember({
    required String memberId,
  }) => caller.callServerEndpoint<List<_i6.UserRecipe>>(
    'userRecipe',
    'getRecipesByMember',
    {'memberId': memberId},
  );

  _i3.Future<_i6.UserRecipe?> getRecipeById({required String recipeId}) =>
      caller.callServerEndpoint<_i6.UserRecipe?>(
        'userRecipe',
        'getRecipeById',
        {'recipeId': recipeId},
      );

  _i3.Future<List<_i6.UserRecipe>> getRecipesByIds({
    required List<String> recipeIds,
  }) => caller.callServerEndpoint<List<_i6.UserRecipe>>(
    'userRecipe',
    'getRecipesByIds',
    {'recipeIds': recipeIds},
  );

  _i3.Future<bool> deleteRecipe({required String recipeId}) =>
      caller.callServerEndpoint<bool>(
        'userRecipe',
        'deleteRecipe',
        {'recipeId': recipeId},
      );
}

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _i2.EndpointRef {
  EndpointGreeting(_i2.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _i3.Future<_i7.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i7.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

class Modules {
  Modules(Client client) {
    serverpod_auth_idp = _i1.Caller(client);
    serverpod_auth_core = _i4.Caller(client);
  }

  late final _i1.Caller serverpod_auth_idp;

  late final _i4.Caller serverpod_auth_core;
}

class Client extends _i2.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    @Deprecated(
      'Use authKeyProvider instead. This will be removed in future releases.',
    )
    super.authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i2.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_i2.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
         host,
         _i8.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
       ) {
    emailIdp = EndpointEmailIdp(this);
    jwtRefresh = EndpointJwtRefresh(this);
    member = EndpointMember(this);
    userRecipe = EndpointUserRecipe(this);
    greeting = EndpointGreeting(this);
    modules = Modules(this);
  }

  late final EndpointEmailIdp emailIdp;

  late final EndpointJwtRefresh jwtRefresh;

  late final EndpointMember member;

  late final EndpointUserRecipe userRecipe;

  late final EndpointGreeting greeting;

  late final Modules modules;

  @override
  Map<String, _i2.EndpointRef> get endpointRefLookup => {
    'emailIdp': emailIdp,
    'jwtRefresh': jwtRefresh,
    'member': member,
    'userRecipe': userRecipe,
    'greeting': greeting,
  };

  @override
  Map<String, _i2.ModuleEndpointCaller> get moduleLookup => {
    'serverpod_auth_idp': modules.serverpod_auth_idp,
    'serverpod_auth_core': modules.serverpod_auth_core,
  };
}
