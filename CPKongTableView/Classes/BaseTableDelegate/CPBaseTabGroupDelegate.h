//
//  CPBaseTabGroupDelegate.h
//  CPTableViewDemo
//
//  Created by 陈超 on 2018/1/29.
//  Copyright © 2018年 cpkong. All rights reserved.
//

#import "CPBaseTabDelegate.h"

typedef CGFloat (^CPTableHeaderHeightBlock)(NSInteger section);
typedef CGFloat (^CPTableFooterHeightBlock)(NSInteger section);

typedef UIView *(^CPTableHeaderViewBlock)(NSInteger section);
typedef UIView *(^CPTableFooterViewBlock)(NSInteger section);

@interface CPBaseTabGroupDelegate : CPBaseTabDelegate
@property (nonatomic, copy) CPTableHeaderHeightBlock headerHBlock;
@property (nonatomic, copy) CPTableFooterHeightBlock footerHBlock;
@property (nonatomic, copy) CPTableHeaderViewBlock headerVBlock;
@property (nonatomic, copy) CPTableFooterViewBlock footerVBlock;
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
    cellHeightBlock:(CPTableViewCellHeightBlock)aHeightBlock
     didSelectBlock:(CPTableViewCellDidSelectBlock)aDidSelectBlock
    headerHBlock:(CPTableHeaderHeightBlock)headerHBlock
    footerHBlock:(CPTableFooterHeightBlock)footerHBlock
    headerVBlock:(CPTableHeaderViewBlock)headerVBlock
    footerHBlock:(CPTableFooterViewBlock)footerVBlock;


@end
