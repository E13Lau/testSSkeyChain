//
//  ViewController.m
//  testKeyChain
//
//  Created by 刘一智 on 16/7/8.
//  Copyright © 2016年 liuyizhi. All rights reserved.
//

#import "ViewController.h"
#import <SSKeychain.h>
#import <Security/Security.h>

static NSString *const kPassword = @"password";
static NSString *const kUsername = @"username";
static NSString *const kService = @"xyz.glrou.key";

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)clickSave:(UIButton *)sender {
    if ([SSKeychain setPassword:kPassword forService:kService account:kUsername]) {
        NSLog(@"save was YES");
    }
    if ([SSKeychain setPassword:@"password2" forService:kService account:@"username2"]) {
        NSLog(@"save2 was YES");
    }
}

- (IBAction)clickLoad:(UIButton *)sender {
    NSLog(@"%@",[SSKeychain accountsForService:kService]);
    NSLog(@"password:::%@",[SSKeychain passwordForService:kService account:kUsername]);
    NSLog(@"password2:::%@",[SSKeychain passwordForService:kService account:@"username2"]);
}

- (IBAction)clickDelete:(UIButton *)sender {
    if ([SSKeychain deletePasswordForService:kService account:kUsername]) {
        NSLog(@"delete was YES");
    }
}

- (IBAction)clickAll:(UIButton *)sender {
    NSLog(@"%@",[SSKeychain allAccounts]);
}

- (void)save {
    
}

- (void)getPassword {
    
}

@end
