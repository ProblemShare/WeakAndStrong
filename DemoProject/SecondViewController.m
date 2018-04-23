//
//  SecondViewController.m
//  DemoProject
//
//  Created by Abhishek on 21/04/18.
//  Copyright © 2018 Abhishek. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
};

-(void)viewDidAppear:(BOOL)animated {
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)print:(UIButton *)sender {

    NSLog(@"Button %@",self.button);
    NSLog(@"TextField %@",self.textfield);
    NSLog(@"TextView %@",self.textview);
    NSLog(@"Label %@",self.label);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
