//
//  collectionViewCell.m
//  empty_camera
//
//  Created by kazuhiro on 2014/06/01.
//  Copyright (c) 2014年 kazuhiro. All rights reserved.
//

#import "collectionViewCell.h"




@implementation collectionViewCell
@synthesize label;




- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.label =[[UILabel alloc]initWithFrame:CGRectMake(0,0,CGRectGetWidth(frame),CGRectGetHeight(frame))];
        label.font = [UIFont systemFontOfSize:CGRectGetHeight(frame)*0.8];
        label.backgroundColor = [UIColor redColor];
        label.textColor = [UIColor blackColor];
        [self.contentView addSubview:label];
        
    }
    return self;
}




@end
