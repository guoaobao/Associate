//
//  CustomBtn.m
//  Associate
//
//  Created by gab on 17/7/11.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "CustomBtn.h"

@implementation CustomBtn
-(void)showClickBlock:(void(^)())block
{

    _block=block;
    [self addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];

}
-(void)btnClick
{

    if (_block) {
        _block();
    }

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
