//
//  LoguinViewController.m
//  TBInvestigacion
//
//  Created by bruno on 16/03/14.
//  Copyright (c) 2014 brunoCompany. All rights reserved.
//

#import "LoguinViewController.h"
#import "OpcBusqViewController.h"

@interface LoguinViewController ()

@end

@implementation LoguinViewController

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
    self.title=@"Loguin Alvaro";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)OnClickIniciarBusq:(id)sender {
    
    OpcBusqViewController *opcVC=[[OpcBusqViewController alloc] init];
    [self.navigationController pushViewController:opcVC animated:YES];
    
}
@end
