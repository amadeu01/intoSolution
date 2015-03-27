//
//  MainViewController.m
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/26/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import "MainViewController.h"
#import "UPStackMenu.h"

@interface MainViewController (){
    UIView *contentView;
    UPStackMenu *stack;
}

@end

@implementation MainViewController



- (void) initButtons{
    
    if(stack)
        [stack removeFromSuperview];
    
    stack = [[UPStackMenu alloc] initWithContentView:contentView];
    [stack setCenter:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2 + 20)];
    [stack setDelegate:self];
    
    UPStackMenuItem *squareItem = [[UPStackMenuItem alloc] initWithImage:[UIImage imageNamed:@"square"] highlightedImage:nil title:@"Jogar"];
    UPStackMenuItem *circleItem = [[UPStackMenuItem alloc] initWithImage:[UIImage imageNamed:@"circle"] highlightedImage:nil title:@"Opções de Jogo"];
    UPStackMenuItem *triangleItem = [[UPStackMenuItem alloc] initWithImage:[UIImage imageNamed:@"triangle"] highlightedImage:nil title:@"Ranking"];
    UPStackMenuItem *crossItem = [[UPStackMenuItem alloc] initWithImage:[UIImage imageNamed:@"cross"] highlightedImage:nil title:@"Como Jogar"];
    NSMutableArray *items = [[NSMutableArray alloc] initWithObjects:squareItem, circleItem, triangleItem, crossItem, nil];
    [items enumerateObjectsUsingBlock:^(UPStackMenuItem *item, NSUInteger idx, BOOL *stop) {
        [item setTitleColor:[UIColor whiteColor]];
    }];
    
    
    [stack setAnimationType:UPStackMenuAnimationType_linear];
    [stack setStackPosition:UPStackMenuStackPosition_down];
    [stack setOpenAnimationDuration:.3];
    [stack setCloseAnimationDuration:.3];
    [items enumerateObjectsUsingBlock:^(UPStackMenuItem *item, NSUInteger idx, BOOL *stop) {
        [item setLabelPosition:UPStackMenuItemLabelPosition_right];
    }];
    
    [stack addItems:items];
    [self.view addSubview:stack];
    
    [self setStackIconClosed:YES];


}

- (void)setStackIconClosed:(BOOL)closed
{
    UIImageView *icon = [[contentView subviews] objectAtIndex:0];
    float angle = closed ? 0 : (M_PI * (135) / 180.0);
    [UIView animateWithDuration:0.3 animations:^{
        [icon.layer setAffineTransform:CGAffineTransformRotate(CGAffineTransformIdentity, angle)];
    }];
}


#pragma mark - UPStackMenuDelegate

- (void)stackMenuWillOpen:(UPStackMenu *)menu
{
    if([[contentView subviews] count] == 0)
        return;
    
    [self setStackIconClosed:NO];
}

- (void)stackMenuWillClose:(UPStackMenu *)menu
{
    if([[contentView subviews] count] == 0)
        return;
    
    [self setStackIconClosed:YES];
}

- (void)stackMenu:(UPStackMenu *)menu didTouchItem:(UPStackMenuItem *)item atIndex:(NSUInteger)index
{
    
    switch (index) {
        case 2:
            [self performSegueWithIdentifier: @"segueToRanking" sender:self];
            break;
            
        case 1:
            [self performSegueWithIdentifier: @"segueToSettings" sender:self];
            break;
        case 3:
            [self performSegueWithIdentifier: @"segueToHowToPlay" sender:self];
            break;
        case 0:
            [self performSegueWithIdentifier: @"segueToPlay" sender:self];
            
            break;
    }

    
}



#pragma mark - View

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:NO];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
    contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [contentView setBackgroundColor:[UIColor blackColor]];
    [contentView.layer setCornerRadius:8.];
    UIImageView *icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cross"]];
    [icon setContentMode:UIViewContentModeScaleAspectFit];
    [icon setFrame:CGRectInset( contentView.frame , 10, 10)];
    [contentView addSubview:icon];
    
    
    
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background3-1"]];
    [self.view addSubview:backgroundImage];
    
    [self initButtons];
    
    
}



@end
