//
//  CountryItem.h
//  ProvinceTextField
//
//  Created by  RWLi on 2017/12/12.
//  Copyright © 2017年  RWLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CountryItem : NSObject

@property(nonatomic,copy)NSString *name;
@property(nonatomic,strong)UIImage *icon;
+(instancetype)countryWirhDict:(NSDictionary*)dict;

@end
