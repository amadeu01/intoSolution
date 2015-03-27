//
//  JogoViewController.m
//  corridaDePlavras
//
//  Created by Amadeu Cavalcante on 3/25/15.
//  Copyright (c) 2015 Amadeu Cavalcante. All rights reserved.
//

#import "JogoViewController.h"

@implementation JogoViewController


- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background3-1"]];
    [self.view addSubview:backgroundImage];
    // Update the views appropriately
    self.textLabel.text = @"Fazendo teste!!!";
    
    
    
}

- (IBAction)textPhase:(id)sender {
    
//    if ( [self.campoEscrever.text isEqual:@"Fazendo"] ){
//        
//        self.sinal.text = @"Deu Certo!";
//        
//        
//    } else {
//        
//        self.sinal.text = @"Deu Errado!";
//    }
//
    
    //Testa um pedaço da palavra conforme o usuario digita.
    // exemplo o cara digitou Fazet - ele compara com "Fazen", nesse exemplo vai dar errado pq a última letra tá errada
    //problema quando apaga tudo - diz que funcionou
    
    NSString *teste = @"Fazendo";
    
    NSString *teste2;
    
    if( self.campoEscrever.text.length <= teste.length){
        teste2 = [teste substringToIndex:self.campoEscrever.text.length];
    }
    
    
    
    
    if ([self.campoEscrever.text isEqualToString:teste2] ){
        
        self.sinal.text = @"Funciona";
        
    } else if( self.campoEscrever.text.length <= 0) {
        self.sinal.text = @"Campo sem nada";
    } else {
        self.sinal.text = @"não funciona";
    }
    
    
    
}


//
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
//{
//    
//    
//   
//    
//    return YES;
//}

@end
