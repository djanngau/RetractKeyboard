//
//  NKeyboardView.m
//  RetractKeyboard
//
//  Created by NFJ on 13-1-30.
//  Copyright (c) 2013年 NiuFJ. All rights reserved.
//  https://github.com/niufj/RetractKeyboard
//  QQ:356735966
//

#import "NKeyboardView.h"

@interface NKeyboardView () <UIInputViewAudioFeedback>

@property (nonatomic, strong) id<UITextInput> textView;

@end

@implementation NKeyboardView

+ (void)addToTextView:(UIResponder<UITextInput> *)textView withBounds:(CGRect)bounds
{
    NKeyboardView *view = [[NKeyboardView alloc] initWithBounds:bounds];
    view.textView = textView;
    [(id)textView setInputAccessoryView:view];
}

- (id)initWithBounds:(CGRect)bounds
{
    if (self = [super init]) {
        self.frame = CGRectMake(bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height);
        self.backgroundColor = [UIColor clearColor];
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        
        UIButton *b = [UIButton buttonWithType:UIButtonTypeCustom];
        [b setFrame:CGRectMake(bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height)];
        [b setImage:[UIImage imageNamed:@"NKeyboardView_bg"] forState:UIControlStateNormal];
        [b setImage:[UIImage imageNamed:@"NKeyboardView_bg"] forState:UIControlStateHighlighted];
        [b addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:b];
    }
    return self;
}

//按钮按下键盘消失
- (void) buttonPressed:(UIButton *)button
{
    [(id)self.textView resignFirstResponder];
}

@end
