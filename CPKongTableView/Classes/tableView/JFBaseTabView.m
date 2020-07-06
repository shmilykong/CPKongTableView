//
//  JFBaseTabView.m
//   
//
//  Created by 陈超 on 2018/8/14.
//  Copyright © 2018年 smart-dove. All rights reserved.
//

#import "JFBaseTabView.h"


@implementation JFBaseTabView

- (instancetype) initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        self.showsVerticalScrollIndicator = NO;
        
        
        //适配ios11的安全区域问题
#ifdef __IPHONE_11_0
        if (@available(iOS 11.0, *)) {
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
            self.estimatedRowHeight = 0;
            self.estimatedSectionHeaderHeight = 0;
            self.estimatedSectionFooterHeight = 0;
        }
#endif
    }
    return self;
}

- (instancetype) initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    if(self = [super initWithFrame:frame style:style]){
        self.showsVerticalScrollIndicator = NO;
        //适配ios11的安全区域问题
#ifdef __IPHONE_11_0
        if (@available(iOS 11.0, *)) {
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentAutomatic;
            self.estimatedRowHeight = 0;
            self.estimatedSectionHeaderHeight = 0;
            self.estimatedSectionFooterHeight = 0;
        }
#endif
    }
    return self;
}


@end
