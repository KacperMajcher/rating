import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: const [
        EmailProviderConfiguration(),
        GoogleProviderConfiguration(
              clientId:
                  '445629305702-gmso4m92le7fc1gtpg1ppdd3sh9b40gv.apps.googleusercontent.com',
            )
      ],
      actions: [
        SignedOutAction((context) {
          Navigator.of(context).pop();
        }),
      ],
      avatarSize: 24,
    );
  }
}
