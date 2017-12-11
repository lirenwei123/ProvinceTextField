//
//  flagsView.m
//  ProvinceTextField
//
//  Created by  RWLi on 2017/12/12.
//  Copyright © 2017年  RWLi. All rights reserved.
//

#import "flagsView.h"

@implementation flagsView


+(instancetype)flagView{
    return [[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil][0];
}

-(void)setItem:(CountryItem *)item{
    _item = item;
    _nameLable.text = item.name;
    _iconView.image  = item.icon;
}

@end
