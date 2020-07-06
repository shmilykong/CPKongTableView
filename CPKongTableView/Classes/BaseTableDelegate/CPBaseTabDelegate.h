//
//  CPBaseTabDelegate.h
//  CPTableViewDemo
//
//  Created by 走b哥 on 2018/1/28.
//  Copyright © 2018年 cpkong. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef void (^CPTableViewCellConfigureBlock)(NSIndexPath* indexPath, id cell, id item);
typedef void (^CPTableViewCellDidSelectBlock)(NSIndexPath* indexPath, id cell, id item);
typedef CGFloat (^CPTableViewCellHeightBlock)(NSIndexPath* indexPath, id item);



@interface CPBaseTabDelegate : NSObject

@property (nonatomic, copy) CPTableViewCellHeightBlock heightBlock;
@property (nonatomic, copy) CPTableViewCellConfigureBlock configureCellBlock;
@property (nonatomic, copy) CPTableViewCellDidSelectBlock didSelectBlock;
@property (nonatomic, copy) NSString* cellIdentigier;

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
     didSelectBlock:(CPTableViewCellDidSelectBlock)aDidSelectBlock;

/**
 配置代理

 @param aTableView tableview
 */
- (void)handleTableViewDataSourceAndDelegate:(UITableView*)aTableView;

/**
 获取当前indexpath的数据

 @param indexPath indexpath
 @return 数据
 */
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@property (nonatomic, copy) NSArray *items;

@end
