//
//  CPBaseTabDelegate_height.m
//  CPTableViewDemo
//
//  Created by 陈超 on 2018/1/29.
//  Copyright © 2018年 cpkong. All rights reserved.
//

#import "CPBaseTabDelegate_height.h"

@implementation CPBaseTabDelegate_height
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.heightBlock) {
        id item = [self itemAtIndexPath:indexPath];
        return self.heightBlock(indexPath,item);
    }
    return 44;
}
@end
