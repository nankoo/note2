//
//  collectionViewController.m
//  empty_camera
//
//  Created by kazuhiro on 2014/06/01.
//  Copyright (c) 2014年 kazuhiro. All rights reserved.
//

#import "collectionViewController.h"
#import "practiceViewController.h"



@interface collectionViewController ()
@property(nonatomic) CGRect albumFrame;

@end



@implementation collectionViewController
static NSString *CELLID = @"CELL";



- (id)initWithCollectionViewLayout:(UICollectionViewLayout *)layout;
{
    self = [super initWithCollectionViewLayout:layout];
    if (self) {
        // Custom initialization
        self.title = @"file";
        UIImage *icon = [UIImage imageNamed:@"8.png"];
        self.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"file" image:icon tag:0];
        
      
        
        self.collectionView.backgroundColor = [UIColor blackColor];
        self.collectionView.dataSource = self;
        self.collectionView.delegate = self;
        
        
        //fill up dummy data
        [self.collectionView registerClass:[collectionViewCell class]forCellWithReuseIdentifier:CELLID];
        


    }
    return self;
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //dataArray = [[NSMutableArray alloc]init];

    
    /*
    for(int i=0;i<101;i++){
        [dataArray addObject:[NSString stringWithFormat:@"%d",i]];
    }
    */
    
    
    int x=400;
    UIButton *btn;
    btn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    btn.frame = CGRectMake((320-x)/2, 100, x, 30);
    [btn setTitle:@"押してね" forState:UIControlStateNormal];
    // ボタンがタッチダウンされた時に、hogeメソッドを呼び出す処理
    [btn addTarget:self action:@selector(hoge)
  forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    

}

/*
-(void)getArray :(NSMutableArray *)collectionVar
{
#if DEBUG
    NSLog(@"checkArray:%@", collectionVar);
#endif

    dataArray = collectionVar;
    //NSArray *array = (NSMutableArray *)collectionVar;
    
    //return array;
}
 */



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [dataArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    collectionViewCell *cell = (collectionViewCell *)[self.collectionView dequeueReusableCellWithReuseIdentifier:CELLID
                                  forIndexPath:indexPath];
    
    
    //set dummy string data to cell. just identify each cell.
    cell.label.text = dataArray[indexPath.row];
    
    return cell;
}

-(void)hoge{
    practiceViewController *controller = [[practiceViewController alloc]init];
#if DEBUG
    NSLog(@"property:%@", controller.pictureList);
#endif

    
}


@end
