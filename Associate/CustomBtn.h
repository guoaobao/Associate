//
//  CustomBtn.h
//  Associate
//
//  Created by gab on 17/7/11.
//  Copyright © 2017年 gab. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^Block)();
@interface CustomBtn : UIButton
{
    Block _block;
}
-(void)showClickBlock:(void(^)())block;
@end
