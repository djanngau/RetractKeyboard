//
//  NKeyboardView.h
//  RetractKeyboard
//
//  Created by NFJ on 13-1-30.
//  Copyright (c) 2013年 NiuFJ. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface NKeyboardView : UIView

/**
 *  用法 : [DMCKeyboardView attachToTextView:self.textField];
 *  @param textView 输入框; bounds 尺寸
 */
+ (void)addToTextView:(id<UITextInput>)textView withBounds:(CGRect)bounds;

@end
