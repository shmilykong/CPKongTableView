//
//  JFScrollView.m
//   
//
//  Created by 陈超 on 2018/9/25.
//  Copyright © 2018年 smart-dove. All rights reserved.
//

#import "JFScrollView.h"

@implementation JFScrollView

- (instancetype) initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
#ifdef __IPHONE_11_0
        if (@available(iOS 11.0, *)) {
            self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
#endif
    }
    return self;
}

@end
