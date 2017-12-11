//
//  ViewController.m
//  ProvinceTextField
//
//  Created by  RWLi on 2017/12/12.
//  Copyright © 2017年  RWLi. All rights reserved.
//

#import "ViewController.h"
#import "ProvinceTF.h"
#import "dateTF.h"
#import "CountryTF.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ProvinceTF *tf = [[ProvinceTF alloc]initWithFrame:CGRectMake(50, 100, 411, 50)];
    tf.backgroundColor  = [UIColor grayColor];
    [self.view addSubview:tf];
    
    dateTF *tf1 = [[dateTF alloc]initWithFrame:CGRectMake(50, 160, 411, 50)];
    tf1.backgroundColor  = [UIColor grayColor];
    [self.view addSubview:tf1];
    
    CountryTF *tf2 = [[CountryTF alloc]initWithFrame:CGRectMake(50, 220, 411, 50)];
    tf2.backgroundColor  = [UIColor grayColor];
    [self.view addSubview:tf2];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
