//
//  UIButton+add.m
//  Associate
//
//  Created by gab on 17/7/11.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "UIButton+add.h"
@implementation UIButton (add)
static const char Key;
-(void)addClickMenthodWithBlock:(void(^)())block
{
    if (block) {
        objc_setAssociatedObject(self, &Key, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);//关联对象
    }
    [self addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
}
-(void)buttonClick
{
   Block block=objc_getAssociatedObject(self, &Key);
    block();
    
    NSLog(@"++++++");
 }
@end
