//
//  AppDelegate.m
//  Tabbed Project
//
//  Created by Chris Wheeler on 5/20/20.
//  Copyright © 2020 Chris Wheeler. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
    

    // So, turns out this is a chicken and egg. If you embed the tabbarcontroller in the navigationcontroller, you get navigationcontroller
    // controlled navigation (whoa). If you embed the navigationcontrollers in the tabbarcontroller, the tabbar controls everything and you
    // can choose to hide bottom bar on push or not. The trick here is that you can't have any other navigationcontrollers higher up the
    // stack. I think. I dunno. I just make this up as I go along.
    //
    // https://learnappmaking.com/tab-bar-controller-uitabbarcontroller-swift-ios/
    // A common issue when using a navigation controller in conjunction with a tab bar controller, is figuring out which goes into which.
    // Do you embed the tab bar controller in a navigation controller, or vice versa?
    //
    // You can use two approaches:
    // Tab Bar Controller In Navigation Controller. In this scenario, the navigation controller is the top-most container. The tab bar is
    // embedded within. This means that if you push a new view controller onto the navigation controller stack, you’ll move away from the tab bar.
    // Navigation Controller In Tab Bar Controller. In the other scenario, the tab bar controller is the top-most container. The navigation
    // controller is embedded within the tab bar controller. If you push a new view controller into the navigation controller stack, the tab bar
    // controller remains in the UI!
    
    // Both approaches have a few benefits:
    // Embedding a tab bar controller in a navigation controller, i.e. losing the tab bar on subsequent navigation, means you’ll have more screen
    // real-estate for the rest of the UI. You often use this approach if the user doesn’t need access to the tab bar all the time.
    // Embedding a navigation controller in a tab bar controller, i.e. keeping the tab bar always on-screen, means you have less screen real-estate.
    // The added benefit is that the user can always find their way back to the main UIs of your app by using the tab bar.
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
