//
//  ViewController.m
//  FontDemo
//
//  Created by Kython Shu on 2017/3/23.
//  Copyright © 2017年 Kython Shu. All rights reserved.
//

#import "BaseViewController.h"


#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
@interface BaseViewController ()
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateFontSize) name:NOTIFICATION_KEY object:nil];
}
- (void)updateFontSize{

}
@end
