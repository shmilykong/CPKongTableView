//
//  CPBaseTabGroupDelegate_height.m
//  CPTableViewDemo
//
//  Created by 陈超 on 2018/1/30.
//  Copyright © 2018年 cpkong. All rights reserved.
//

#import "CPBaseTabGroupDelegate_height.h"

@implementation CPBaseTabGroupDelegate_height
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.heightBlock) {
        id item = [self itemAtIndexPath:indexPath];
        return self.heightBlock(indexPath,item);
    }
    return 44;
}
@end
