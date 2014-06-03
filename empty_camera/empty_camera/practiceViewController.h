//
//  practiceViewController.h
//  empty_camera
//
//  Created by kazuhiro on 2014/06/01.
//  Copyright (c) 2014年 kazuhiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "collectionViewController.h"


@interface practiceViewController : UIViewController
<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    /*
     ・#importをmファイル/hファイルで使い分ける。
     ・変数宣言をmファイル/hファイルで使い分ける。
     とかもろもろ
     */
    UIImageView *frame;
    UIButton *btn;
    UIButton *btn2;
    
    //sample_cording
    UIImageView *mutableframe;
    NSMutableArray *pictureList;
    
}
@property (nonatomic) NSMutableArray *pictureList;
-(void)hoge;


@end
