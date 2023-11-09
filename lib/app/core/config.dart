enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.development;

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
}