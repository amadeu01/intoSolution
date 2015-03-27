//
//  HowToPlay.m
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/25/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import "HowToPlay.h"

@implementation HowToPlay


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self styleNavBar];
    
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background"]];
    [self.view addSubview:backgroundImage];
}

- (void)styleNavBar {
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void)backTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


@end
