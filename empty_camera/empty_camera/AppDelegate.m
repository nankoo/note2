//
//  AppDelegate.m
//  empty_camera
//
//  Created by kazuhiro on 2014/06/01.
//  Copyright (c) 2014年 kazuhiro. All rights reserved.
//

#import "AppDelegate.h"
#import "practiceViewController.h"
#import "collectionViewController.h"



@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    //[_window makeKeyAndVisible];
    
    root = [[UITabBarController alloc]init];
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(100, 100);
    // minimum spacing between lines//行ごとのスペースの最小値
    layout.minimumLineSpacing = 10;
    // minimum spacing between items//アイテムごとのスペースの最小値
    layout.minimumInteritemSpacing = 10;
    
    //ここのインスタンス化に際して、なぜUIKit名ではなくユーザー定義のものでできるのか
    practiceViewController *tab1 = [[practiceViewController alloc]init];
    collectionViewController *tab2 = [[collectionViewController alloc]initWithCollectionViewLayout:layout];
    
    
    
     NSArray *viewArray = @[tab1, tab2];
    [(UITabBarController *)root setViewControllers:viewArray animated:NO ];

    
    
    [_window addSubview:root.view];
    [_window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
