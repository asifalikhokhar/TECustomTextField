//
//  TECustomTextField.h
//  CelebrityApp
//
//  Created by Asif Ali on 12/9/15.
//  Copyright © 2015 MobiWhiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TECustomTextField : UITextField
{
    
}

@property (nonatomic, strong) IBInspectable UIColor *placeholderColor;
@property (nonatomic, strong) IBInspectable UIImage *leftIcon;
@property (nonatomic, strong) IBInspectable UIImage *rightIcon;
@property (nonatomic, assign) IBInspectable CGFloat iconOffset;
@property (nonatomic, assign) IBInspectable CGFloat titleOffset;
@end
