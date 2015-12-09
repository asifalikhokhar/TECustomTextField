//
//  TECustomTextField.m
//  CelebrityApp
//
//  Created by Asif Ali on 12/9/15.
//  Copyright © 2015 MobiWhiz. All rights reserved.
//

#import "TECustomTextField.h"

@implementation TECustomTextField

-(void) awakeFromNib {
    [super awakeFromNib];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(5, 0, 20, 20)];
    if (_leftIcon) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
        [imageView setContentMode:UIViewContentModeScaleAspectFit];
        [imageView setImage:_leftIcon];
        [view addSubview:imageView];
        self.leftView = view;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    if (_rightIcon) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 15, 15)];
        [imageView setContentMode:UIViewContentModeScaleAspectFit];
        [imageView setImage:_rightIcon];
        [view addSubview:imageView];
        self.rightView = view;
        self.rightViewMode = UITextFieldViewModeAlways;
    }
}

-(void) drawPlaceholderInRect:(CGRect)rect {
    
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:self.placeholder
                                                                 attributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor] }];
    self.attributedPlaceholder = string;
    [super drawPlaceholderInRect:rect];
}
@end
