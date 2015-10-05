//
//  RWUIControls.h
//  RWUIControls
//
//  Created by xuzepei on 15/9/30.
//  Copyright (c) 2015年 moki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWUIControls : NSObject

@property(nonatomic,strong)NSString* text;

- (void)show;
- (UIView*)getMyView;
- (UIImage*)getImage;

@end
