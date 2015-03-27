//
//  JogoViewController.h
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/25/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JogoViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *textLabel;

@property (strong, nonatomic) IBOutlet UILabel *sinal;
@property (strong, nonatomic) IBOutlet UITextField *campoEscrever;

@end
