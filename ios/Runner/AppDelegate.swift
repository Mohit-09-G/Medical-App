import Flutter
import UIKit
import FirebaseCore
import flutter_local_notifications

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    // Configure Firebase
    FirebaseApp.configure()
    
    // Set plugin registrant callback for local notifications
    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { registry in
        GeneratedPluginRegistrant.register(with: registry)
    }
    
    // Register generated plugins
    GeneratedPluginRegistrant.register(with: self)
    
    // Set UNUserNotificationCenter delegate for iOS 10+ local notifications
    if #available(iOS 10.0, *) {
        UNUserNotificationCenter.current().delegate = self
    }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
