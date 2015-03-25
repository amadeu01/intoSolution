//
//  jogo.h
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/24/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface jogo : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *phrasesToBeCompered;
@property (strong, nonatomic) IBOutlet UILabel *test;
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end
