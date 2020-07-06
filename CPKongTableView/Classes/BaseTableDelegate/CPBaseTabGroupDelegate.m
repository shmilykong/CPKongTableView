//
//  CPBaseTabGroupDelegate.m
//  CPTableViewDemo
//
//  Created by 陈超 on 2018/1/29.
//  Copyright © 2018年 cpkong. All rights reserved.
//

#import "CPBaseTabGroupDelegate.h"

@implementation CPBaseTabGroupDelegate


- (id)initWithItems:(NSArray *)aItems
     cellIdentifier:(NSString *)aIdentifier
 configureCellBlock:(CPTableViewCellConfigureBlock)aConfigureCellBlock
    cellHeightBlock:(CPTableViewCellHeightBlock)aHeightBlock
     didSelectBlock:(CPTableViewCellDidSelectBlock)aDidSelectBlock
       headerHBlock:(CPTableHeaderHeightBlock)headerHBlock
       footerHBlock:(CPTableFooterHeightBlock)footerHBlock
       headerVBlock:(CPTableHeaderViewBlock)headerVBlock
       footerHBlock:(CPTableFooterViewBlock)footerVBlock{
    
   self =   [super initWithItems:aItems cellIdentifier:aIdentifier configureCellBlock:aConfigureCellBlock cellHeightBlock:aHeightBlock didSelectBlock:aDidSelectBlock];
    if (self) {
        self.headerHBlock = headerHBlock;
        self.footerHBlock = footerHBlock;
        self.headerVBlock = headerVBlock;
        self.footerVBlock = footerVBlock;
    }
    
    return self;
    
    
    
    
}


- (id)itemAtIndexPath:(NSIndexPath*)indexPath{
    
    NSArray *arr = self.items[indexPath.section];
    return arr[(NSUInteger)indexPath.row];
}

#pragma mark - 重写----设置有groupTableView有几个分区
-(NSInteger)numberOfSectionsInTableView:(UITableView*)tableView {
    
    return self.items.count; //返回值是多少既有几个分区
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //分别设置每个分组上面显示的单元格个数
    NSArray *arr = self.items[section];
    return arr.count;
}
#pragma mark - 重写----设置标题和标注的高度
-(CGFloat)tableView:(UITableView*)tableView heightForHeaderInSection:(NSInteger)section {
    if (self.headerHBlock) {
        return self.headerHBlock(section);
    }
    return 0.000001;
}
-(CGFloat)tableView:(UITableView*)tableView heightForFooterInSection:(NSInteger)section {
    if (self.footerHBlock) {
        return self.footerHBlock(section);
    }
    return 0.000001;
}

#pragma mark - 重写----设置自定义的标题和标注
-(UIView*)tableView:(UITableView*)tableView viewForHeaderInSection:(NSInteger)section {
   
    if (self.headerVBlock) {
        return self.headerVBlock(section);
    }
    
    return nil;
    
}
-(UIView*)tableView:(UITableView*)tableView viewForFooterInSection:(NSInteger)section {
    if (self.footerVBlock) {
        return self.footerVBlock(section);
    }
    
    return nil;
}

@end
