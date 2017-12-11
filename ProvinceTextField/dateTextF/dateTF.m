//
//  dateTF.m
//  ProvinceTextField
//
//  Created by  RWLi on 2017/12/12.
//  Copyright © 2017年  RWLi. All rights reserved.
//

#import "dateTF.h"
@interface dateTF()<UITextFieldDelegate>

@end
@implementation dateTF

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUP];
    }
    return self;
}

-(void)setUP{
    UIDatePicker *datePK = [[UIDatePicker alloc]init];
    datePK.locale = [NSLocale localeWithLocaleIdentifier:@"zh"];
    datePK.datePickerMode =  UIDatePickerModeDate;
    [datePK addTarget:self action:@selector(dateSelect:) forControlEvents:UIControlEventValueChanged];
    
    self.inputView = datePK;
    self.delegate  = self;
    self.placeholder = @"点击选择日期";
}

-(void)dateSelect:(UIDatePicker *)datePK{
    NSDate *date = datePK.date;
    NSDateFormatter * form =  [[NSDateFormatter alloc]init];
    form.dateFormat = @"YYYY-MM-dd";
    self.text   = [form stringFromDate:date];
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
  
    NSDate *date = [NSDate date];
    NSDateFormatter * form =  [[NSDateFormatter alloc]init];
    form.dateFormat = @"YYYY-MM-dd";
    self.text   = [form stringFromDate:date];
    return YES;
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    return NO;
}

@end
