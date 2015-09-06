//
//  HYActionSheet.m
//  HYActionSheet
//
//  Created by heyang on 15/9/6.
//  Copyright (c) 2015年 com.scxingdun. All rights reserved.
//

#import "HYActionSheet.h"

@implementation HYActionSheet{
    UIActionSheet * _actionSheet;
    NSInteger _selectedIndex;
}
- (id)initWithTitles:(NSArray *)titles {
    self = [super init];
    if (self) {
        
        _titles = titles;
        _destructiveButtonIndex = 0;
        _cancelButtonIndex = titles.count - 1;
    }
    return self;
}
- (void)setTitles:(NSArray *)titles {
    _titles = titles;
    _cancelButtonIndex = titles.count - 1;
}

- (NSInteger)showInView:(UIView *)view {
    
    _actionSheet = [[UIActionSheet alloc] init];
    
    _actionSheet.delegate = self;
    
    for (NSString * title in _titles) {
        [_actionSheet addButtonWithTitle:title];
    }
    if (_destructiveButtonIndex != -1) {
        _actionSheet.destructiveButtonIndex = _destructiveButtonIndex;
    }
    if (_cancelButtonIndex != -1) {
        _actionSheet.cancelButtonIndex = _cancelButtonIndex;
    }
    [_actionSheet showInView:view];
    CFRunLoopRun();
    return _selectedIndex;
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    _selectedIndex = buttonIndex;
    _actionSheet = nil;
    CFRunLoopStop(CFRunLoopGetCurrent());
}

@end
