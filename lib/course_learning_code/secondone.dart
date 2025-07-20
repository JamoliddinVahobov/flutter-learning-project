// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    MaterialApp(
      home: SettingsPage(),
    ),
  );
}

// ignore: constant_identifier_names
enum AppTheme { Light, Dark }

// ignore: use_key_in_widget_constructors
class SettingsPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  AppTheme _currentTheme = AppTheme.Light;

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _currentTheme = (prefs.getBool('isDarkMode') ?? false)
          ? AppTheme.Dark
          : AppTheme.Light;
    });
  }

  void _saveTheme(bool isDarkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode);
    setState(() {
      _currentTheme = isDarkMode ? AppTheme.Dark : AppTheme.Light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: _currentTheme == AppTheme.Dark,
              onChanged: (bool value) {
                _saveTheme(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
// Example Notification Settings

bool _isNotificationsEnabled = true;

void _toggleNotifications(bool value) {
  setState(() {
    _isNotificationsEnabled = value;
    // Implement logic to update notification preferences
  });
}

void setState(Null Function() param0) {}

Widget buildNotificationSettings() {
  return ListTile(
    title: Text('Notifications'),
    trailing: Switch(
      value: _isNotificationsEnabled,
      onChanged: _toggleNotifications,
    ),
  );
}
// Example Language Selection

String _selectedLanguage = 'English';

// ignore: unused_element
void _changeLanguage(String newLanguage) {
  setState(() {
    _selectedLanguage = newLanguage;
    // Implement logic to change app language
  });
}

Widget buildLanguageSettings() {
  return ListTile(
    title: Text('Language'),
    subtitle: Text(_selectedLanguage),
    onTap: () {
      // Show language selection dialog or navigate to language settings page
    },
  );
}
// Example Account Settings

String _userName = 'John Doe';
String _email = 'john.doe@example.com';

void _editAccount() {
  // Navigate to account editing screen
}

Widget buildAccountSettings() {
  return ListTile(
    leading: Icon(Icons.account_circle),
    title: Text(_userName),
    subtitle: Text(_email),
    trailing: IconButton(
      icon: Icon(Icons.edit),
      onPressed: _editAccount,
    ),
  );
}
