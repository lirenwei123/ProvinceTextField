//
//  CountryTF.m
//  ProvinceTextField
//
//  Created by  RWLi on 2017/12/12.
//  Copyright © 2017年  RWLi. All rights reserved.
//

#import "CountryTF.h"
#import "CountryItem.h"
#import "flagsView.h"
@interface CountryTF()<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,strong)NSArray *items;
@end

@implementation CountryTF

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUP];
    }
    return self;
}

-(NSArray *)items{
    if (!_items) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"flags.plist" ofType:nil];
        NSArray * items  =  [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *arr = [NSMutableArray array];
        if (items.count) {
            for (NSDictionary *dict in items) {
                CountryItem *item = [CountryItem countryWirhDict:dict];
                [arr addObject:item];
            }
        }
        _items = arr;
    }
    return _items;
}
-(void)setUP{
    UIPickerView *PK = [[UIPickerView alloc]init];
    PK.delegate = self;
    PK.dataSource = self;
    self.inputView = PK;
    self.delegate  = self;
    self.placeholder = @"点击选择国家";
}


-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    CountryItem *item  =self.items[0];
    self.text = item.name;
    return YES;
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    return NO;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.items.count;
}
-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 80;
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    flagsView *flag = [flagsView flagView];
    flag.frame =  CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 0);
    CountryItem * item =  self.items[row];
    flag.item =  item;
    return flag;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    CountryItem *item  =self.items[row];
    self.text = item.name;
}
@end
