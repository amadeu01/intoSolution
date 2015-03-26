//
//  Settings.m
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/25/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import "Settings.h"


@implementation Settings


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    // Note that images configured as the back bar button's background do
    // not have the current tintColor applied to them, they are displayed
    // as it.
    UIImage *backButtonBackgroundImage = [UIImage imageNamed:@"Menu"];
    // The background should be pinned to the left and not stretch.
    backButtonBackgroundImage = [backButtonBackgroundImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, backButtonBackgroundImage.size.width - 1, 0, 0)];
    
    id appearance = [UIBarButtonItem appearanceWhenContainedIn:[Settings class], nil];
    [appearance setBackButtonBackgroundImage:backButtonBackgroundImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    // Provide an empty backBarButton to hide the 'Back' text present by
    // default in the back button.
    //
    // NOTE: You do not need to provide a target or action.  These are set
    //       by the navigation bar.
    // NOTE: Setting the title of this bar button item to ' ' (space) works
    //       around a bug in iOS 7.0.x where the background image would be
    //       horizontally compressed if the back button title is empty.
    UIBarButtonItem *backBarButton = [[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStylePlain target:nil action:NULL];
    self.navigationItem.backBarButtonItem = backBarButton;
    
    // NOTE: There is a bug in iOS 7.0.x where the background of the back bar
    //       button item will not appear until the back button has been tapped
    //       once.


    
    
}





@end
