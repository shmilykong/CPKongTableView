//
//  UITableViewCell+Extension.h
//  Finance
//
//  Created by 陈超 on 2017/8/30.
//  Copyright © 2017年 陈超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (Extension)
////注册cell
//+ (void)registerTabelView:(UITableView*)aTable
//            nibIdentifier:(NSString*)identifier;

//载入数据
- (void)configure:(UITableViewCell*)aCell
        custimObj:(id)obj
        indexPath:(NSIndexPath*)indexPath;

//根据数据源计算cell高度 默认返回44.0f
+ (CGFloat)getCellHeightWitCustomObj:(id)obj
                           indexPath:(NSIndexPath*)indexPath;
@end
