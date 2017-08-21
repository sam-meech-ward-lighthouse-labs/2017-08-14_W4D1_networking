//
//  ViewController.m
//  Eclipse
//
//  Created by Sam Meech-Ward on 2017-08-21.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "Eclipse-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Sun *sun = [[Sun alloc] init];
    sun.coverage = @"50";
    [sun printCoverage];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
