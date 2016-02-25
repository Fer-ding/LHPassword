//
//  LHPasswordView.m
//  LHPassword
//
//  Created by YueHui on 16/2/19.
//  Copyright © 2016年 Leihou Software co. All rights reserved.
//

#import "LHYPassword.h"

// 屏幕bounds
#define LHScreenBounds [UIScreen mainScreen].bounds
#define LHScreenW [UIScreen mainScreen].bounds.size.width

@interface LHYPassword ()

///单个密码框宽度
@property (nonatomic , assign) float fieldWidth;
///密码框个数
@property (nonatomic , assign) float fieldCount;
///返回密码
@property (nonatomic , strong) NSString *password;
///响应者
@property (nonatomic , strong) UITextField *responsder;

@end
@implementation LHYPassword

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.fieldWidth = 50;
        self.fieldCount = 6;
        [self setupResponsder];
        
    }
    return self;
}

/** 响应者 */
- (void)setupResponsder
{
    UITextField *responsder = [[UITextField alloc] init];
    responsder.keyboardType = UIKeyboardTypePhonePad;
    
    [responsder addTarget:self action:@selector(txchange:) forControlEvents:UIControlEventEditingChanged];
    
    self.responsder = responsder;
    self.responsder.inputAccessoryView = self.inputView;
    [kWindow addSubview:self.responsder];
    
}


- (void)show {
    
}

- (void)hide {
    
}

#pragma mark - Property
- (void)setPwdWidth:(float)pwdWidth {
    _pwdWidth = pwdWidth;
    
    self.fieldWidth = pwdWidth;
}
- (void)setPwdCount:(float)pwdCount {
    _pwdCount = pwdCount;
    
    self.fieldCount = pwdCount;
}
@end
