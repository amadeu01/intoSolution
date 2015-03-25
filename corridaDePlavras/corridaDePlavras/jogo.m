//
//  jogo.m
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/24/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import "jogo.h"

@implementation jogo


- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    // Update the views appropriately
    self.phrasesToBeCompered.text = @"Fazendo teste!!!";
    
    

}

- (IBAction)textPhase:(id)sender {
    
    if ( [self.textField.text isEqual:@"Fazendo"] ){
        
        self.test.text = @"Deu Certo!";
        
        
    } else {
        
        self.test.text = @"Deu Errado!";
    }
    
    
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"teste");
    return YES;
}
@end
