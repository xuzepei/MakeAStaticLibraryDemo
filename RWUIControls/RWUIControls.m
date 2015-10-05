//
//  RWUIControls.m
//  RWUIControls
//
//  Created by xuzepei on 15/9/30.
//  Copyright (c) 2015年 moki. All rights reserved.
//

#import "RWUIControls.h"
#import "MyView.h"

@implementation RWUIControls

- (id)init
{
    if(self = [super init])
    {
        self.text = @"Test library.";
    }
    
    return self;
}

- (void)show
{
    NSLog(@"Text:%@",self.text);
}

- (UIView*)getMyView
{
    UIView *myView = nil;
    
    NSString *bundlePath = [[NSBundle mainBundle]pathForResource:@"Resources" ofType:@"bundle"];
    
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    
    NSArray* array = [bundle loadNibNamed:@"MyView"owner:self options:nil];
    
    if([array count])
    {
        myView = [array objectAtIndex:0];
        myView.frame = CGRectMake(0, 0, 100, 100);
    }
    
    return myView;
}

- (UIImage*)getImage
{
    NSString *bundlePath = [[NSBundle mainBundle]pathForResource:@"Resources" ofType:@"bundle"];
    
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    
    NSString* filePath = [bundle pathForResource:@"1.png" ofType:nil];
    
    return [UIImage imageWithContentsOfFile:filePath];
}

@end
