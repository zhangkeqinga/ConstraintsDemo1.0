//
//  ViewController.m
//  ConstraintsDemo1.0
//
//  Created by Dong on 14-12-29.
//  Copyright (c) 2014年 jhony. All rights reserved.
//
//  http://blog.csdn.net/a330416020/article/details/39964209

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UILabel   *textInfoLabel;
@property (nonatomic, strong) UIView    *backgroundView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.backgroundView = [[UIView alloc] init];
    [self.backgroundView setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.backgroundView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.backgroundView];
    
    self.textInfoLabel = [[UILabel alloc] init];
    [self.textInfoLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.textInfoLabel.backgroundColor = [UIColor redColor];
    self.textInfoLabel.numberOfLines = 0;
    self.textInfoLabel.font = [UIFont systemFontOfSize:15];
    self.textInfoLabel.text = @"测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试";
    [self.view addSubview:self.textInfoLabel];
    
    
    NSDictionary *views = @{@"backgroundView":self.backgroundView, @"textInfoLabel":self.textInfoLabel};
    NSDictionary *metrics = @{@"LeftStep":@20, @"TopStep":@20, @"Width":@200, @"Height":@"100", @"VStep":@20, @"HStep":@20};
    


    NSString *vLayoutString1 = @"V:|-30-[textInfoLabel(>=20)]";
    
    NSArray *vLayoutArray1 = [NSLayoutConstraint constraintsWithVisualFormat:vLayoutString1 options:0 metrics:metrics views:views];

    NSString *vLayoutString = @"V:|-30-[backgroundView(==100)]-|";
//    NSString *vLayoutString = @"V:|-30.0-[backgroundView]-30.0-|";
   // NSString *vLayoutString = @"V:|-TopStep-[backgroundView(==Width)]-VStep-[textInfoLabel(>=20)]";
    NSArray *vLayoutArray = [NSLayoutConstraint constraintsWithVisualFormat:vLayoutString options:0 metrics:metrics views:views];
    
    NSString *hLayoutstring = @"H:|-40-[textInfoLabel(backgroundView)]-40-[backgroundView(>=20)]-40-|";
//    NSString *hLayoutstring = @"H:|-30.0-[backgroundView]-30.0-|";
    //NSString *hLayoutstring = @"H:|-LeftStep-[backgroundView(==Height)]-HStep-[textInfoLabel(==100)]";
    NSArray *hLayoutArray = [NSLayoutConstraint constraintsWithVisualFormat:hLayoutstring options:0 metrics:metrics views:views];
    
    [self.view addConstraints:vLayoutArray1];
    [self.view addConstraints:vLayoutArray];
    [self.view addConstraints:hLayoutArray];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
