import 'package:shared_preferences/shared_preferences.dart';

final Future<SharedPreferencesWithCache> prefs =
      SharedPreferencesWithCache.create(
          cacheOptions: const SharedPreferencesWithCacheOptions(
              // This cache will only accept the key 'counter'.
              allowList: <String>{'user','password','key'}));