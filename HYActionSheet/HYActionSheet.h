//
//  HYActionSheet.h
//  HYActionSheet
//
//  Created by heyang on 15/9/6.
//  Copyright (c) 2015年 com.scxingdun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface HYActionSheet : NSObject<UIActionSheetDelegate>

/** items*/
@property (nonatomic, strong) NSArray * titles;
@property (nonatomic, assign) NSInteger destructiveButtonIndex;
@property (nonatomic, assign) NSInteger cancelButtonIndex;

- (id)initWithTitles:(NSArray *)titles;

- (NSInteger)showInView:(UIView *)view;

@end
