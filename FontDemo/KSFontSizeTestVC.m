//
//  KSFontSizeTestVC.m
//  FontDemo
//
//  Created by Kython Shu on 2017/3/24.
//  Copyright © 2017年 Kython Shu. All rights reserved.
//

#import "KSFontSizeTestVC.h"
#import "KSViewController.h"
@interface KSFontSizeTestVC ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation KSFontSizeTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.font = [UIFont systemFontOfSize:[[NSUserDefaults standardUserDefaults] floatForKey:FontSize]];
}
- (IBAction)bigFont:(id)sender {
    
    float fontSize = [[NSUserDefaults standardUserDefaults] floatForKey:FontSize];
    fontSize = BIG_SIZE;
    [[NSUserDefaults standardUserDefaults] setFloat:fontSize forKey:FontSize];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_KEY object:nil];
}
- (IBAction)midFont:(id)sender {
    
    float fontSize = [[NSUserDefaults standardUserDefaults] floatForKey:FontSize];
    fontSize = MID_SIZE;
    [[NSUserDefaults standardUserDefaults] setFloat:fontSize forKey:FontSize];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_KEY object:nil];


}
- (IBAction)smallFont:(id)sender {
    float fontSize = [[NSUserDefaults standardUserDefaults] floatForKey:FontSize];
    fontSize = SMALL_SIZE;
    [[NSUserDefaults standardUserDefaults] setFloat:fontSize forKey:FontSize];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_KEY object:nil];

}
- (IBAction)jumpNextAction:(id)sender {
    
    [self.navigationController pushViewController:[KSViewController new] animated:YES];
}


- (void)updateFontSize{
    self.label.font = [UIFont systemFontOfSize:[[NSUserDefaults standardUserDefaults] floatForKey:FontSize]];
    [self.view setNeedsLayout];
}
@end
