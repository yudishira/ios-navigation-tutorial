//
//  TelaPrincipalViewController.m
//  Navigation
//
//  Created by Willian Yudi Sirakawa on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "TelaPrincipalViewController.h"
#import "Singleton.h"
#import "Informacao.h"

@interface TelaPrincipalViewController ()

@end

static int indice = 0;

@implementation TelaPrincipalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
//        UIImage *image = [UIImage imageNamed:@"Azera_50"];
//        [[Singleton sharedInstance]insereCarro:@"A" Modelo:@"Azera" Marca:@"Hyundai" Imagem:image];
        [[Singleton sharedInstance]popula];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if (indice != 0) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(telaAnterior)];
    }
    if (indice != 25) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(proximaTela:)];
    }
    
//    Singleton *s = [Singleton sharedInstance];
//    NSMutableArray *inventario = [s inventario];
//    Informacao *i = [inventario objectAtIndex:indice];
    
    Informacao *i = [[[Singleton sharedInstance]inventario]objectAtIndex:indice];
    
    [self setTitle:i.letra];
    
    [_carroImagem setImage:i.imagem];
    //[_nomeCarro setText:(@"%@ %@",i.marca,i.modelo)];
    _nomeCarro.text = i.modelo;
    _nomeMarca.text = i.marca;
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)proximaTela:(id)sender
{
    indice++;
    
    TelaPrincipalViewController *proxTela = [[TelaPrincipalViewController alloc]init];
    
    [[self navigationController] pushViewController:proxTela animated:YES];
    
}
                                                 
-(void)telaAnterior
{
    indice--;
    
    [[self navigationController] popViewControllerAnimated:YES];
}


@end
