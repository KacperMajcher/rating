import 'package:flutter/material.dart';

enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.production;

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'https://my-json-server.typicode.com/KacperMajcher/FreeDataBaseForProjects';
      case Flavor.production:
        return 'https://my-json-server.typicode.com/KacperMajcher/FreeDataBaseForProjects';
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.production:
        return false;
    }
  }

  static bool get removePermission {
    switch (appFlavor) {
      case Flavor.development:
        return true;
      case Flavor.production:
        return false;
    }
  }

  static String get showSnackBarOnRemove {
    switch (appFlavor) {
      case Flavor.development:
        return 'Task deleted, great job!';
      case Flavor.production:
        return 'Oh, let me handle this for ya';
    }
  }

  static get snackBarOnRemoveColor {
    switch (appFlavor) {
      case Flavor.development:
        return Colors.green;
      case Flavor.production:
        return Colors.red;
    }
  }
}
