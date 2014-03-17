//
//  OpcBusqViewController.m
//  TBInvestigacion
//
//  Created by bruno on 16/03/14.
//  Copyright (c) 2014 brunoCompany. All rights reserved.
//

#import "OpcBusqViewController.h"

@interface OpcBusqViewController ()

@end

@implementation OpcBusqViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    UIImageView *imgView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cabecera.jpg"]];
    
    self.navigationItem.titleView = imgView;
    self.navigationItem.hidesBackButton = YES;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
