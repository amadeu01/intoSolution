//
//  Settings.m
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/25/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import "Settings.h"



@implementation Settings


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self styleNavBar];

    __weak id weakSelf = self;
    self.navigationController.interactivePopGestureRecognizer.delegate = weakSelf;

}

- (void)styleNavBar {
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void)backTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
