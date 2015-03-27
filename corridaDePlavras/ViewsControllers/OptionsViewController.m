//
//  OptionsViewController.m
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/26/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import "OptionsViewController.h"

@interface OptionsViewController (){
    UIView *contentView;
    UPStackMenu *stack;
}

@end
@implementation OptionsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [contentView setBackgroundColor:[UIColor colorWithRed:112./255. green:47./255. blue:168./255. alpha:1.]];
    [contentView.layer setCornerRadius:6.];
    UIImageView *icon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cross"]];
    [icon setContentMode:UIViewContentModeScaleAspectFit];
    [icon setFrame:CGRectInset(contentView.frame, 10, 10)];
    [contentView addSubview:icon];
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background3-1"]];
    [self.view addSubview:backgroundImage];
    
    [self initButtons];
    
}

- (void) initButtons {
    
    if(stack)
        [stack removeFromSuperview];
    
    stack = [[UPStackMenu alloc] initWithContentView:contentView];
    [stack setCenter:CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2 + 20)];
    [stack setDelegate:self];
    
    UPStackMenuItem *squareItem = [[UPStackMenuItem alloc] initWithImage:[UIImage imageNamed:@"square"] highlightedImage:nil title:@"Voltar"];
    UPStackMenuItem *circleItem = [[UPStackMenuItem alloc] initWithImage:[UIImage imageNamed:@"circle"] highlightedImage:nil title:@"Jogo Simples"];
    UPStackMenuItem *triangleItem = [[UPStackMenuItem alloc] initWithImage:[UIImage imageNamed:@"triangle"] highlightedImage:nil title:@"Criar Jogo"];
    UPStackMenuItem *crossItem = [[UPStackMenuItem alloc] initWithImage:[UIImage imageNamed:@"cross"] highlightedImage:nil title:@"Desafio"];
    NSMutableArray *items = [[NSMutableArray alloc] initWithObjects:squareItem, circleItem, triangleItem, crossItem, nil];
    [items enumerateObjectsUsingBlock:^(UPStackMenuItem *item, NSUInteger idx, BOOL *stop) {
        [item setTitleColor:[UIColor whiteColor]];
    }];
    

    
    [stack setAnimationType:UPStackMenuAnimationType_progressive];
    [stack setStackPosition:UPStackMenuStackPosition_up];
    [stack setOpenAnimationDuration:.4];
    [stack setCloseAnimationDuration:.4];
    [items enumerateObjectsUsingBlock:^(UPStackMenuItem *item, NSUInteger idx, BOOL *stop) {
        [item setLabelPosition:UPStackMenuItemLabelPosition_right];
        [item setLabelPosition:UPStackMenuItemLabelPosition_left];
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
        case 3:
            [self performSegueWithIdentifier:@"segueToLoading" sender:self];
            break;
            
        case 1:
            [self performSegueWithIdentifier:@"segueSimpleGame" sender:self];
            break;
            
        case 2:
            [self performSegueWithIdentifier:@"segueToCreateGame" sender:self];
            break;
            
        case 0:
            [self.navigationController popViewControllerAnimated:NO];
            break;
            
            
            
    }

    
}



@end
