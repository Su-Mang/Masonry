//
//  LoginViewController.m
//  Te1
//
//  Created by 岳靖翔 on 2019/9/15.
//  Copyright © 2019 岳靖翔. All rights reserved.
//

#import "LoginViewController.h"
#import "Masonry.h"
#import "ResignViewController.h"
#import "NewViewController.h"
@interface LoginViewController ()<UITextFieldDelegate>
@property (nonatomic, strong)UITextField *mmtextField;
@property (nonatomic, strong)UITextField *zztextField;
@property NSString *str1;
@property NSString *str2;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat padding = 10;
    self.view.backgroundColor = [UIColor whiteColor];
    //UIView *ViewMain = [[UIView alloc]init];
    _mmtextField = [[UITextField alloc]init];
    [self.view addSubview:_mmtextField];
    [_mmtextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(300);
        make.size.mas_equalTo(CGSizeMake(200, 50));
       // make.center .equalTo(self.view);
        //make.left.equalTo(self.view).mas_offset(5*padding);
        //make.right.equalTo(self.view).mas_offset(-2*padding);
        //make.width.mas_equalTo(200);
        //make.height.mas_equalTo(400);
    }];
  
    [_mmtextField setPlaceholder:@"请输入密码"];
    _zztextField  = [[UITextField alloc]init];
    _zztextField.delegate = self;
    _mmtextField.delegate = self;
    [self.view addSubview:_zztextField];
    [_zztextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(200);
        make.size.mas_equalTo(CGSizeMake(200, 50));
    }];

    [_zztextField setPlaceholder:@"请输入账号"];
    UIButton *loginbutton =  [[UIButton alloc]init];
    UIButton *resignbutton = [[UIButton alloc]init];
    [loginbutton setTitle:@"登陆" forState:UIControlStateNormal];
    [resignbutton setTitle:@"注册" forState:UIControlStateNormal];
   [ loginbutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [resignbutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [loginbutton addTarget:self action:@selector(denglu) forControlEvents:UIControlEventTouchDown];
    [resignbutton addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:loginbutton];
    [loginbutton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(400);
       make.left.equalTo(self.view).mas_offset(20*padding); make.size.mas_equalTo(CGSizeMake(70, 40));
        
    }];
    [self.view addSubview:resignbutton];
    [resignbutton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(400);
        make.left.equalTo(self.view).mas_offset(10*padding); make.size.mas_equalTo(CGSizeMake(70, 40));
    }];
}
-(void)denglu {
    if ([_zztextField.text isEqualToString:_mmtextField.text]) {
        NSLog(@"登陆成功");
        NewViewController *newView = [[NewViewController alloc]init];
        [self presentViewController:newView animated:YES completion:nil];
    }
}
-(void)zhuce {
    ResignViewController *resingV = [[ResignViewController alloc]init];
    resingV.delegate = self;
    [self presentViewController:resingV animated:YES completion:nil];
}
- (void)put:(NSString *)str1and :(NSString *)str2
{
    _zztextField.text= str1and;
    _mmtextField.text = str2;
    _str1= str1and;
    _str2 = str2;
    
}



@end
