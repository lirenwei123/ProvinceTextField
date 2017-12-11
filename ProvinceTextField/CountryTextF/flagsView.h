//
//  flagsView.h
//  ProvinceTextField
//
//  Created by  RWLi on 2017/12/12.
//  Copyright © 2017年  RWLi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountryItem.h"

@interface flagsView : UIView
@property (weak, nonatomic) IBOutlet UILabel *nameLable;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property(nonatomic,strong)CountryItem *item;

+(instancetype)flagView;
@end
