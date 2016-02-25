//
//  LHPasswordView.h
//  LHPassword
//
//  Created by YueHui on 16/2/19.
//  Copyright © 2016年 Leihou Software co. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LHYPassword : UIView

/**
 *  密码框宽度
 */
@property (nonatomic , assign) float pwdWidth;
/**
 *  密码框个数
 */
@property (nonatomic , assign) float pwdCount;

- (void)show;
- (void)hide;


@end
