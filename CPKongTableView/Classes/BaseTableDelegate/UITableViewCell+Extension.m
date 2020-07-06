//
//  UITableViewCell+Extension.m
//  Finance
//
//  Created by 陈超 on 2017/8/30.
//  Copyright © 2017年 陈超. All rights reserved.
//

#import "UITableViewCell+Extension.h"

@implementation UITableViewCell (Extension)

////注册cell
//+ (void)registerTabelView:(UITableView*)aTable
//            nibIdentifier:(NSString*)identifier{
//   // [aTable registerNib:[UINib nibWithNibName:identifier bundle:nil] forCellReuseIdentifier:identifier];
//    
//   // [aTable registerClass:NSClassFromString(identifier) forCellReuseIdentifier:identifier];
//}

//载入数据
- (void)configure:(UITableViewCell*)aCell
        custimObj:(id)obj
        indexPath:(NSIndexPath*)indexPath{
    
}

//根据数据源计算cell高度 默认返回44.0f
+ (CGFloat)getCellHeightWitCustomObj:(id)obj
                           indexPath:(NSIndexPath*)indexPath{
    return 44.0f;
}

@end
