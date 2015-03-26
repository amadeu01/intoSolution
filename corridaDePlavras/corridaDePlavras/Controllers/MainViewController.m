//
//  MainViewController.m
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/26/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import "MainViewController.h"
#import "CustomNavigationBar.h"

@implementation MainViewController


-(void) viewDidLoad{
    [super viewDidLoad];
    
    
    
//    UIImage *buttonImage = [[UIImage imageNamed:@"button.png"]
//                            resizableImageWithCapInsets:UIEdgeInsetsMake(18, 18, 18, 18)];
    [self initButtons];
    
    
    
}

- (void) initButtons{
    UIImage *buttonImage = [UIImage imageNamed:@"button.png"];
    
    [self.playButton setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [self.playButton setTitle:@"Jogar" forState:UIControlStateNormal];
    [self.rankingButton setBackgroundImage:buttonImage forState:UIControlStateNormal];
    [self.rankingButton setTitle:@"Ranking" forState:UIControlStateNormal];
    
    self.playButton.bounds = CGRectMake(0, 0, 200, 50);
    self.playButton.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:self.playButton];
    
    
    self.rankingButton.bounds = CGRectMake(0, 0, 500, 50);
    self.rankingButton.frame = CGRectMake(80.0, 210.0, 500, 40.0);
    [self.view addSubview:self.rankingButton];

}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [super viewDidLoad];
    [self styleNavBar];
    
    __weak id weakSelf = self;
    self.navigationController.interactivePopGestureRecognizer.delegate = weakSelf;
}


- (void)styleNavBar {
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

@end
