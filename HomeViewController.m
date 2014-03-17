//
//  HomeViewController.m
//  Proyecto
//
//  Created by Alvaro Herrera on 9/03/14.
//  Copyright (c) 2014 Alvaro Herrera. All rights reserved.
//

#import "HomeViewController.h"
#import "OpcBusqViewController.h"


@interface HomeViewController ()
 @property (strong, nonatomic) UITapGestureRecognizer *tap;
@end

@implementation HomeViewController

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
    [self.navigationController.navigationBar setHidden:YES];
    [super viewDidLoad];
    _tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    _tap.enabled = NO;
    [self.view addGestureRecognizer:_tap];
    
    UIButton *backButton = [[UIButton alloc] initWithFrame: CGRectMake( 130, 270, 55, 96)];
    UIImage *backImageNormal = [UIImage imageNamed:@"Post_facebook_small_disabled.png"];
    UIImage *backImagePreset = [UIImage imageNamed:@"Post_facebook_small.png"];
    [backButton setBackgroundImage:backImageNormal forState:UIControlStateNormal];
    [backButton setBackgroundImage:backImagePreset forState:UIControlStateHighlighted];
    [backButton addTarget:self action:@selector(ingresar) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backButton];
    // Do any additional setup after loading the view from its nib.
    
    

}
- (void) ingresar
{
    NSLog(@"Ingresando");
    OpcBusqViewController *opcVC=[[OpcBusqViewController alloc] init];
    [self.navigationController pushViewController:opcVC animated:YES];
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    _tap.enabled = YES;
    return YES;
}
-(void)hideKeyboard
{
    [self.username resignFirstResponder];
    [self.password resignFirstResponder];
    _tap.enabled = NO;
}

@end
