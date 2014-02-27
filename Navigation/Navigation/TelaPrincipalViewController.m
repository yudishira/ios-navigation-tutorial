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
#include <time.h>

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
    int x;
    
    
    if (indice != 0) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(telaAnterior)];
    }
    if (indice != 25) {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(proximaTela:)];
    }
    srand( (unsigned)time(NULL) );
    
    x = 1 + (rand()%12);
    
    if (x % 12 == 1) {
        self.navigationController.navigationBar.barTintColor = [UIColor lightGrayColor];
    }
    if (x % 12 == 2) {
        self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    }
    if (x % 12 == 3) {
        self.navigationController.navigationBar.barTintColor = [UIColor grayColor];
    }
    if (x % 12 == 4) {
        self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    }
    if (x % 12 == 5) {
        self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    }
    if (x % 12 == 6) {
        self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    }
    if (x % 12 == 7) {
        self.navigationController.navigationBar.barTintColor = [UIColor cyanColor];
    }
    if (x % 12 == 8) {
        self.navigationController.navigationBar.barTintColor = [UIColor yellowColor];
    }
    if (x % 12 == 9) {
        self.navigationController.navigationBar.barTintColor = [UIColor magentaColor];
    }
    if (x % 12 == 10) {
        self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    }
    if (x % 12 == 11) {
        self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
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
