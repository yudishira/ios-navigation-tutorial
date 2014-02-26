//
//  Singleton.m
//  Navigation
//
//  Created by Willian Yudi Sirakawa on 26/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "Informacao.h"

@implementation Singleton

-(id) init
{
    self = [super init];
    if (self) {
        inventario = [[NSMutableArray allocWithZone:(struct _NSZone *)nil]init];
    }
    return self;
}

-(NSMutableArray *)inventario
{
    return inventario;
}

-(Informacao *)insereCarro:(NSString *)l Modelo:(NSString *)mo Marca:(NSString *)ma Imagem:(UIImage *)i
{
    Informacao *p = [Informacao insereCarroImagem:i Marca:ma Modelo:mo Letra:l];
    [inventario addObject:p];
    
    
    return p;
}

+(Singleton *)sharedInstance
{
    static Singleton *instance = nil;
    if (!instance) {
        instance = [[super alloc]init];
    }
    return instance;
}

@end
