//
//  practiceViewController.m
//  empty_camera
//
//  Created by kazuhiro on 2014/06/01.
//  Copyright (c) 2014年 kazuhiro. All rights reserved.
//

#import "practiceViewController.h"




@interface practiceViewController ()

@end

@implementation practiceViewController
@synthesize pictureList;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"camera";
        UIImage *icon = [UIImage imageNamed:@"11.png"];
        self.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"camera" image:icon tag:0];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    int x=200;
    frame = [[UIImageView alloc] initWithFrame:CGRectMake((320-x)/2,100,x,x)];
    //uicolor は nsobjectのサブクラス
    //yellowColorはクラスメソッド
    frame.backgroundColor = [UIColor greenColor];
    frame.contentMode = UIViewContentModeScaleAspectFill;
    
    
    pictureList = [NSMutableArray array];
    
    mutableframe = [[UIImageView alloc] initWithFrame:CGRectMake((320-x)/2,300,x,x)];
    mutableframe.backgroundColor = [UIColor redColor];
    mutableframe.contentMode = UIViewContentModeScaleAspectFill;

    
    
    btn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    btn.frame = CGRectMake((320-x)/2, 50, x, 30);
    [btn setTitle:@"写真" forState:UIControlStateNormal];
    // ボタンがタッチダウンされた時に、hogeメソッドを呼び出す処理
    [btn addTarget:self action:@selector(hoge)
  forControlEvents:UIControlEventTouchDown];
    
    /*
    btn2 = [UIButton buttonWithType:UIButtonTypeInfoDark];
    btn2.frame = CGRectMake(0, 50, 100, 30);
    [btn2 setTitle:@"mutable_画像_お試し" forState:UIControlStateNormal];
    // ボタンがタッチダウンされた時に、hogeメソッドを呼び出す処理
    [btn2 addTarget:self action:@selector(hogehoge)
  forControlEvents:UIControlEventTouchDown];
     */
    
    
#if DEBUG
    NSLog(@"debug_log:%@", pictureList);
#endif
    
    
    [self.view addSubview:mutableframe];
    [self.view addSubview:frame];
    [self.view addSubview:btn];
    //[self.view addSubview:btn2];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)hoge{
    
    //カメラが使用できるかどうか判定。可なら生成して呼び出す
    if([UIImagePickerController
        isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        UIImagePickerController *ipc =
        [[UIImagePickerController alloc] init];  // 生成
        ipc.delegate = self;  // デリゲートを自分自身に設定
        /*ここでカメラからデータを取得すると指定*/
        ipc.sourceType =UIImagePickerControllerSourceTypeCamera;  // 画像の取得先をカメラに設定
        ipc.allowsEditing = YES;  // 画像取得後編集する
        //[self presentModalViewController:ipc animated:YES];
        [self presentViewController:ipc animated:YES completion:nil];
        
#if DEBUG
        NSLog(@"imgview内:%@",frame.image);
#endif
        if (frame.image == nil) {
        }else{
            [pictureList addObject:frame.image];
        }
        
#if DEBUG
        NSLog(@"array:%@", pictureList);
#endif
        

    }
    //同スコープ内だとmutableArrayは更新されて行く
    //寿命とか関係ないの？
    //[pictureList addObject:frame.image];

#if DEBUG
    NSLog(@"inhogr:%@", pictureList);
#endif
    /*
    collectionViewController *collectionView = [[collectionViewController alloc]init];
    //collectionViewへ値を渡す
    [collectionView getArray:pictureList];
     */
    
    /*
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.delegate = self;
    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:imagePicker animated:YES completion:nil];
     */
    mutableframe.animationImages = pictureList;
    mutableframe.animationDuration = 0.5f;
    [self.view addSubview:mutableframe];
    [mutableframe startAnimating];
    
}

/*
-(void)hogehoge
{
#if DEBUG
    NSLog(@"debug_log:%@", pictureList);
#endif
    NSString *imagePath = [NSString stringWithFormat:@"8.png"];
    UIImage *img = [UIImage imageNamed:imagePath];
    [pictureList addObject:img];
}
*/


- (void)imagePickerController :(UIImagePickerController *)picker
        didFinishPickingImage :(UIImage *)image editingInfo :(NSDictionary *)editingInfo {
    NSLog(@"selected");
    [frame setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
