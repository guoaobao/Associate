//
//  UIButton+add.h
//  Associate
//
//  Created by gab on 17/7/11.
//  Copyright © 2017年 gab. All rights reserved.
//
typedef void(^Block)();
#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface UIButton (add)
{

}
-(void)addClickMenthodWithBlock:(void(^)())block;
@end
