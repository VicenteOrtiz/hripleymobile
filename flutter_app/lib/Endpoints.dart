import 'dart:io';
import 'package:http/http.dart' as http;

const String BASE_URL = 'https://estak.io/';

class LoginResources
{
  static login (params)
  {
    return http.post(BASE_URL + 'login_api', body: params);
  }

  static logout (params)
  {
    return http.post(BASE_URL + 'login_api', body: params);
  }
}

class UserResources
{
  static get ()
  {
    return http.get(
        BASE_URL + 'frontend/user',
        headers: {HttpHeaders.authorizationHeader: "Bearer " + globals.token}
    );
  }
}

class NotificationResources
{
  static get (params)
  {
    return http.get(
        BASE_URL + 'frontend/notificaciones' + params,
        headers: {HttpHeaders.authorizationHeader: "Bearer " + globals.token}
    );
  }
}
