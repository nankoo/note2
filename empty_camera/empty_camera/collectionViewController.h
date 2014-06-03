//
//  collectionViewController.h
//  empty_camera
//
//  Created by kazuhiro on 2014/06/01.
//  Copyright (c) 2014年 kazuhiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "collectionViewCell.h"


@interface collectionViewController : UICollectionViewController
<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
{
    @public
    NSMutableArray *dataArray;
    
}
//-(void)getArray :(NSMutableArray *)collectionVar;


@end