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

-(void)popula
{
    
    UIImage *image = [UIImage imageNamed:@"Azera_50"];
    [[Singleton sharedInstance]insereCarro:@"A" Modelo:@"Azera" Marca:@"Hyundai" Imagem:image];
    image = [UIImage imageNamed:@"Brasilia_50"];
    [[Singleton sharedInstance]insereCarro:@"B" Modelo:@"Brasilia" Marca:@"Volkswagen" Imagem:image];
    image = [UIImage imageNamed:@"Corcel_50"];
    [[Singleton sharedInstance]insereCarro:@"C" Modelo:@"Corcel" Marca:@"Ford" Imagem:image];
    image = [UIImage imageNamed:@"Dakota_50"];
    [[Singleton sharedInstance]insereCarro:@"D" Modelo:@"Dakota" Marca:@"Dodge" Imagem:image];
    image = [UIImage imageNamed:@"Eclipse_50"];
    [[Singleton sharedInstance]insereCarro:@"E" Modelo:@"Eclipse" Marca:@"Mitsubishi" Imagem:image];
    image = [UIImage imageNamed:@"Ferrariff_50"];
    [[Singleton sharedInstance]insereCarro:@"F" Modelo:@"FF" Marca:@"Ferrari" Imagem:image];
    image = [UIImage imageNamed:@"GT-R_50"];
    [[Singleton sharedInstance]insereCarro:@"G" Modelo:@"GT-R" Marca:@"Nissan" Imagem:image];
    image = [UIImage imageNamed:@"HummerH3_50"];
    [[Singleton sharedInstance]insereCarro:@"H" Modelo:@"H3" Marca:@"Hummer" Imagem:image];
    image = [UIImage imageNamed:@"Impala_50"];
    [[Singleton sharedInstance]insereCarro:@"I" Modelo:@"Impala" Marca:@"Ford" Imagem:image];
    image = [UIImage imageNamed:@"Journey_50"];
    [[Singleton sharedInstance]insereCarro:@"J" Modelo:@"Journey" Marca:@"Dodge" Imagem:image];
    image = [UIImage imageNamed:@"kombi_50"];
    [[Singleton sharedInstance]insereCarro:@"K" Modelo:@"Kombi" Marca:@"Volkswagens" Imagem:image];
    image = [UIImage imageNamed:@"LFA_50"];
    [[Singleton sharedInstance]insereCarro:@"L" Modelo:@"LFA" Marca:@"Lexus" Imagem:image];
    image = [UIImage imageNamed:@"Mustang_50"];
    [[Singleton sharedInstance]insereCarro:@"M" Modelo:@"Mustang" Marca:@"Ford" Imagem:image];
    image = [UIImage imageNamed:@"NSX_50"];
    [[Singleton sharedInstance]insereCarro:@"N" Modelo:@"NSX" Marca:@"Honda" Imagem:image];
    image = [UIImage imageNamed:@"Omega_50"];
    [[Singleton sharedInstance]insereCarro:@"O" Modelo:@"Omega" Marca:@"Chevrolet" Imagem:image];
    image = [UIImage imageNamed:@"Parati_50"];
    [[Singleton sharedInstance]insereCarro:@"P" Modelo:@"Parati" Marca:@"Volkswagen" Imagem:image];
    image = [UIImage imageNamed:@"quattroporte_50"];
    [[Singleton sharedInstance]insereCarro:@"Q" Modelo:@"Quattroporte" Marca:@"Maserati" Imagem:image];
    image = [UIImage imageNamed:@"Ranger_50"];
    [[Singleton sharedInstance]insereCarro:@"R" Modelo:@"Ranger" Marca:@"Ford" Imagem:image];
    image = [UIImage imageNamed:@"S2000_50"];
    [[Singleton sharedInstance]insereCarro:@"S" Modelo:@"S2000" Marca:@"Honda" Imagem:image];
    image = [UIImage imageNamed:@"Tucson_50"];
    [[Singleton sharedInstance]insereCarro:@"T" Modelo:@"Tucson" Marca:@"Hyundai" Imagem:image];
    image = [UIImage imageNamed:@"Uno_50"];
    [[Singleton sharedInstance]insereCarro:@"U" Modelo:@"Uno" Marca:@"Fiat" Imagem:image];
    image = [UIImage imageNamed:@"Veraneio_50"];
    [[Singleton sharedInstance]insereCarro:@"V" Modelo:@"Veraneio" Marca:@"Chevrolet" Imagem:image];
    image = [UIImage imageNamed:@"Wrangler_50"];
    [[Singleton sharedInstance]insereCarro:@"W" Modelo:@"Wrangler" Marca:@"Jeep" Imagem:image];
    image = [UIImage imageNamed:@"XSara_50"];
    [[Singleton sharedInstance]insereCarro:@"X" Modelo:@"Xsara" Marca:@"Citroën" Imagem:image];
    image = [UIImage imageNamed:@"Yaris_50"];
    [[Singleton sharedInstance]insereCarro:@"Y" Modelo:@"Yaris" Marca:@"Toyota" Imagem:image];
    image = [UIImage imageNamed:@"Zafira_50"];
    [[Singleton sharedInstance]insereCarro:@"Z" Modelo:@"Zafira" Marca:@"Chevrolet" Imagem:image];
}

@end
