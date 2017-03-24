//
//  KSViewController.m
//  FontDemo
//
//  Created by Kython Shu on 2017/3/24.
//  Copyright © 2017年 Kython Shu. All rights reserved.
//

#import "KSViewController.h"

@interface KSViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation KSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.font = [UIFont systemFontOfSize:[[NSUserDefaults standardUserDefaults] floatForKey:FontSize]];
}
@end
