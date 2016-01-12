//
//  TECustomTextField.m
//  CelebrityApp
//
//  Created by Asif Ali on 12/9/15.
//  Copyright © 2015 MobiWhiz. All rights reserved.
//

#define kTitleOffset 15.0
#define kImageOffset 5.0
#define kIconWidth 20.0

#import "TECustomTextField.h"

@implementation TECustomTextField

-(void) awakeFromNib {
    [super awakeFromNib];
    
    _iconOffset = _iconOffset == 0 ? kImageOffset : _iconOffset;
    _titleOffset = _titleOffset == 0 ? kTitleOffset : _titleOffset;
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kIconWidth + _titleOffset + _iconOffset, 22)];
    if (_leftIcon) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(_iconOffset, 0, kIconWidth, 20)];
        [imageView setContentMode:UIViewContentModeScaleAspectFit];
        [imageView setImage:_leftIcon];
        [view addSubview:imageView];
        self.leftView = view;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    if (_rightIcon) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(_iconOffset, 0, kIconWidth, 20)];
        [imageView setContentMode:UIViewContentModeScaleAspectFit];
        [imageView setImage:_rightIcon];
        [view addSubview:imageView];
        self.rightView = view;
        self.rightViewMode = UITextFieldViewModeAlways;
    }
}

-(void) setLeftIcon:(UIImage *)leftIcon {
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kIconWidth + _titleOffset + _iconOffset, 22)];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(_iconOffset, 0, kIconWidth, 20)];
    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    [imageView setImage:leftIcon];
    [view addSubview:imageView];
    self.leftView = view;
    self.leftViewMode = UITextFieldViewModeAlways;
}

-(void) setRightIcon:(UIImage *)rightIcon {
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kIconWidth + _titleOffset + _iconOffset, 22)];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(_iconOffset, 0, kIconWidth, 20)];
    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    [imageView setImage:rightIcon];
    [view addSubview:imageView];
    self.rightView = view;
    self.rightViewMode = UITextFieldViewModeAlways;
}

-(void) drawPlaceholderInRect:(CGRect)rect {
    
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:self.placeholder
                                                                 attributes:@{ NSForegroundColorAttributeName : self.placeholderColor != nil ? self.placeholderColor : [UIColor lightGrayColor] }];
    self.attributedPlaceholder = string;
    [super drawPlaceholderInRect:rect];
}
@end
