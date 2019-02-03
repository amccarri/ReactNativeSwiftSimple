//
//  AppDelegate.swift
//  Demo
//
//  Created by Alex M on 2/3/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

let JS_CODE_LOCATION = RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil)!

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    return true
  }
}

extension AppDelegate {
  var reactViewController: UIViewController {
    get {
      let view = RCTRootView(bundleURL: JS_CODE_LOCATION, moduleName: "Demo", initialProperties: nil, launchOptions: [:])
      let vc = UIViewController()
      vc.view = view
      return vc
    }
  }
}


/**
 #import <React/RCTBundleURLProvider.h>
 #import <React/RCTRootView.h>
 
 @implementation AppDelegate
 
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 {
 NSURL *jsCodeLocation;
 
 jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
 
 RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
 moduleName:@"Demo"
 initialProperties:nil
 launchOptions:launchOptions];
 rootView.backgroundColor = [UIColor blackColor];
 
 self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
 UIViewController *rootViewController = [UIViewController new];
 rootViewController.view = rootView;
 self.window.rootViewController = rootViewController;
 [self.window makeKeyAndVisible];
 return YES;
 }
 
 @end
*/
