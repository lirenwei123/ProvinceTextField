//
//  CountryItem.m
//  ProvinceTextField
//
//  Created by  RWLi on 2017/12/12.
//  Copyright © 2017年  RWLi. All rights reserved.
//

#import "CountryItem.h"

@implementation CountryItem

+(instancetype)countryWirhDict:(NSDictionary*)dict{
    CountryItem * item = [[CountryItem alloc]init];
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [item setValue:obj forKeyPath:key];
    }];
    return item;
}

-(void)setIcon:(UIImage *)icon{
    NSString *imgName =  (NSString*)icon;
    _icon  = [UIImage imageNamed:imgName];
}
@end
