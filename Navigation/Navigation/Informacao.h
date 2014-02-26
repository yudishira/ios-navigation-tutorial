//
//  Informacao.h
//  Navigation
//
//  Created by Willian Yudi Sirakawa on 26/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Informacao : NSObject
{
    NSString *letra;
    UIImage *imagem;
    NSString *modelo;
    NSString *marca;
}

@property NSString *letra, *modelo, *marca;
@property UIImage *imagem;

-(id)initWithImagem: (UIImage *)i Marca: (NSString *)ma Modelo: (NSString *)mo Letra: (NSString *)l;

+(id)insereCarroImagem: (UIImage *)i Marca: (NSString *)ma Modelo: (NSString *)mo Letra: (NSString *)l;


@end
