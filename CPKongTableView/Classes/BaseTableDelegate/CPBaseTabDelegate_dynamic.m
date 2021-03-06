//
//  CPBaseTabDelegate_dynamic.m
//  CPTableViewDemo
//
//  Created by 陈超 on 2018/1/29.
//  Copyright © 2018年 cpkong. All rights reserved.
//

#import "CPBaseTabDelegate_dynamic.h"

@interface CPBaseTabDelegate_dynamic()



@end

@implementation CPBaseTabDelegate_dynamic

- (id)initWithItems:(NSArray *)aItems
     cellIdentifier:(NSString *)aIdentifier
 configureCellBlock:(CPTableViewCellConfigureBlock)aConfigureCellBlock
cellEstimatedHeight:(CPTableViewCellEstimatedHeightBlock)aEstimateHeightBlock
     didSelectBlock:(CPTableViewCellDidSelectBlock)aDidSelectBlock
   willDisplayBlock:(CPTableViewCellwillDisplayBlock)willDisplayBlock{
    
    self = [super initWithItems:aItems cellIdentifier:aIdentifier configureCellBlock:aConfigureCellBlock cellHeightBlock:nil didSelectBlock:aDidSelectBlock];
    if (self) {
        
        self.estimateHeightBlock = aEstimateHeightBlock;
        self.willDisplayBlock = willDisplayBlock;
    }
    return self;
    
}

#pragma mark - UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    if (self.estimateHeightBlock) {
       id item = [self itemAtIndexPath:indexPath];
        return self.estimateHeightBlock(indexPath,item);
    }
    
    return 0;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.willDisplayBlock) {
        id item = [self itemAtIndexPath:indexPath];
        self.willDisplayBlock(indexPath,cell,item);
    }
}



@end
