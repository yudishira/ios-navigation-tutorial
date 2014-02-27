//
//  Singleton.h
//  Navigation
//
//  Created by Willian Yudi Sirakawa on 26/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Informacao;
@interface Singleton : NSObject
{
    NSMutableArray *inventario;
}

-(NSMutableArray *)inventario;
-(Informacao *)insereCarro: (NSString *)l Modelo: (NSString *)mo Marca: (NSString *)ma Imagem: (UIImage *)i;

+(Singleton *)sharedInstance;

-(void)popula;

@end
