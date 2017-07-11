//
//  ViewController.m
//  Associate
//
//  Created by gab on 17/7/11.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+add.h"
#import "CustomBtn.h"
#import "gabTest.h"
#import <TestFramework/TestFramework.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *b=[UIButton buttonWithType:UIButtonTypeSystem];
    b.frame=CGRectMake(10, 10, 40, 40);
    b.backgroundColor=[UIColor redColor];
    [b addClickMenthodWithBlock:^{
        NSLog(@"======");
        gabTest *te=[[gabTest alloc]init];
        [te test:@""];
        TestView *say=[[TestView alloc]initWithFrame:CGRectMake(10, 100, 150, 160)];
        [say addImgeView];
        [self.view addSubview:say];
        
        
    }];
    [self.view addSubview:b];
    
   CustomBtn * bt=[CustomBtn buttonWithType:UIButtonTypeSystem];
    bt.frame=CGRectMake(10, 60, 40, 40);
    bt.backgroundColor=[UIColor redColor];
    [bt showClickBlock:^{
        NSLog(@"fffjjjj");
    }];
    [self.view addSubview:bt];
    

    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
