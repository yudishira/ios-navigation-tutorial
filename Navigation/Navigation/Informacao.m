//
//  Informacao.m
//  Navigation
//
//  Created by Willian Yudi Sirakawa on 26/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Informacao.h"

@implementation Informacao

@synthesize letra, imagem, modelo, marca;

-(id)initWithImagem:(UIImage *)i Marca:(NSString *)ma Modelo:(NSString *)mo Letra:(NSString *)l
{
    self = [super init];
    if (self)
    {
        imagem = i;
        modelo = mo;
        marca = ma;
        letra = l;
    }
    return self;
}

+(id)insereCarroImagem:(UIImage *)i Marca:(NSString *)ma Modelo:(NSString *)mo Letra:(NSString *)l
{
    Informacao *info = [[Informacao alloc]initWithImagem:i Marca:ma Modelo:mo Letra:l];
    return info;
}

@end
