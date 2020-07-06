//
//  CPBaseTabDelegate_dynamic.h
//  CPTableViewDemo
//
//  Created by 陈超 on 2018/1/29.
//  Copyright © 2018年 cpkong. All rights reserved.
//动态计算高度

#import "CPBaseTabDelegate.h"
typedef CGFloat (^CPTableViewCellEstimatedHeightBlock)(NSIndexPath* indexPath,id item);
typedef void (^CPTableViewCellwillDisplayBlock)(NSIndexPath* indexPath, id cell,id item);
@interface CPBaseTabDelegate_dynamic : CPBaseTabDelegate




@property (nonatomic, copy) CPTableViewCellEstimatedHeightBlock estimateHeightBlock;
@property (nonatomic, copy) CPTableViewCellwillDisplayBlock willDisplayBlock;
/**
 初始化代理
 
 @param aItems 数据源数组
 @param aIdentifier cellID
 @param aConfigureCellBlock cell自定义
 @param aHeightBlock cell高度配置
 @param aDidSelectBlock cell点击
 @return 返回一个代理
 */
- (id)initWithItems:(NSArray *)aItems
     cellIdentifier:(NSString *)aIdentifier
 configureCellBlock:(CPTableViewCellConfigureBlock)aConfigureCellBlock
    cellEstimatedHeight:(CPTableViewCellEstimatedHeightBlock)aEstimateHeightBlock
     didSelectBlock:(CPTableViewCellDidSelectBlock)aDidSelectBlock
   willDisplayBlock:(CPTableViewCellwillDisplayBlock)willDisplayBlock;
@end
