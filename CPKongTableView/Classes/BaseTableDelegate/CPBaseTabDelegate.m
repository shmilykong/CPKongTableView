//
//  CPBaseTabDelegate.m
//  CPTableViewDemo
//
//  Created by 走b哥 on 2018/1/28.
//  Copyright © 2018年 cpkong. All rights reserved.
//

#import "CPBaseTabDelegate.h"
#import "UITableViewCell+Extension.h"

@interface CPBaseTabDelegate ()<UITableViewDataSource,UITableViewDelegate>


@end

@implementation CPBaseTabDelegate


/**
初始化代理

 @param aItems 数组
 @param aIdentifier 标识
 @param aConfigureCellBlock cell配置
 @param aHeightBlock 高度配置
 @param aDidSelectBlock 选中配置
 @return 返回一个代理
 */
- (id)initWithItems:(NSArray *)aItems
     cellIdentifier:(NSString *)aIdentifier
 configureCellBlock:(CPTableViewCellConfigureBlock)aConfigureCellBlock
    cellHeightBlock:(CPTableViewCellHeightBlock)aHeightBlock
     didSelectBlock:(CPTableViewCellDidSelectBlock)aDidSelectBlock{
    
    self = [super init];
    if (self) {
        self.items = aItems;
        self.cellIdentigier = aIdentifier;
        self.configureCellBlock = aConfigureCellBlock;
        self.heightBlock = aHeightBlock;
        self.didSelectBlock = aDidSelectBlock;
    }
    return self;
    
}

/**
 获取对应的数组元素

 @param indexPath indexPath
 @return 返回一个对象
 */
- (id)itemAtIndexPath:(NSIndexPath*)indexPath{
    return self.items[(NSUInteger)indexPath.row];
}

/**
 tableView代理，返回多少行

 @param tableView tab
 @param section section
 @return 返回多少行
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
}


/**
 tableView cell初始化

 @param tableView tableview
 @param indexPath indexpath
 @return 返回一个cell
 */
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentigier];
    
    
    if (!cell) {
        Class obj = NSClassFromString(self.cellIdentigier);
        cell = [[obj alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:self.cellIdentigier];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if (self.configureCellBlock) {
        id item = [self itemAtIndexPath:indexPath];
        self.configureCellBlock(indexPath,cell,item);
    }
    return cell;
}


/**
 tableView代理 选中点击事件

 @param tableView tableview
 @param indexPath indexpath
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.didSelectBlock) {
        id item = [self itemAtIndexPath:indexPath];
        id cell = [tableView cellForRowAtIndexPath:indexPath];
        self.didSelectBlock(indexPath,cell,item);
    }
}


/**
 设置代理

 @param aTableView tableview
 */
- (void)handleTableViewDataSourceAndDelegate:(UITableView *)aTableView{
    
    __weak __typeof__(self) weakSelf = self;
    aTableView.delegate = weakSelf;
    aTableView.dataSource = weakSelf;
    aTableView.separatorStyle=UITableViewCellSeparatorStyleNone;
}




@end
