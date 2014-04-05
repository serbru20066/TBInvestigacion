//
//  OpcBusqViewController.m
//  TBInvestigacion
//
//  Created by bruno on 16/03/14.
//  Copyright (c) 2014 brunoCompany. All rights reserved.
//

#import "OpcBusqViewController.h"
#import <QuartzCore/QuartzCore.h>

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
    CGRect screen      = [[UIScreen mainScreen] bounds];
    [self.navigationController.navigationBar setHidden:NO];
    UIImageView *imgView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cabecera.jpg"]];
   
    self.navigationItem.titleView = imgView;
    self.navigationItem.hidesBackButton = YES;

    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:(255/255.0) green:(111/255.0) blue:(0/255.0) alpha:1];
    [super viewDidLoad];
    
    arrayData=[[NSArray alloc] initWithObjects:@"Busqueda de Productos",@"Farmacias en Mapa", nil];
  
    table=[[UITableView alloc] initWithFrame:self.view.frame];
    table.frame=CGRectMake(0.0, 140.0 , screen.size.width , screen.size.height);
    
    [self.view addSubview:table];
    table.delegate=self;
    table.dataSource=self;
    table.backgroundColor=[UIColor clearColor];
    table.backgroundView.backgroundColor=[UIColor clearColor];
    

    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Protocol UITableViewDataSource

- (NSInteger) numberOfSectionsInTableView: (UITableView *) tableView
{
    return 1;
}
- (NSInteger) tableView: (UITableView *) tableView
  numberOfRowsInSection: (NSInteger) section
{
    return [arrayData count];
}


- (UITableViewCell *) tableView: (UITableView *) tableView
          cellForRowAtIndexPath: (NSIndexPath *) indexPath
{
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             CellIdentifier];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier: CellIdentifier];

    //Cutomizacion de la celda
    cell.textLabel.text=[arrayData objectAtIndex:indexPath.row];
    cell.textLabel.font=[UIFont fontWithName:@"American Typewriter" size:18];
    cell.textLabel.backgroundColor=[UIColor clearColor];
    [cell setBackgroundColor:[UIColor clearColor]];
    [cell setTintColor:[UIColor blackColor]];
    
    //imagen icono de la celda
    if (indexPath.row==0)
    cell.imageView.image=[UIImage imageNamed:@"pastilla.png"];
    if (indexPath.row==1)
    cell.imageView.image=[UIImage imageNamed:@"mapaPeru.png"];
    
    //Fondo celda seleccionada
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor colorWithRed:(59.0f/255.0f) green:(152.0f/255.0f) blue:(40.0f/255.0f) alpha:0.7];
    bgColorView.layer.cornerRadius = 7;
    bgColorView.layer.masksToBounds = YES;
    [cell setSelectedBackgroundView:bgColorView];
    
    return cell;
 
}



#pragma mark - Protocol UITableViewDelegate

- (CGFloat) tableView: (UITableView *) tableView
heightForRowAtIndexPath: (NSIndexPath *) indexPath
{
    return 150.0;
}


@end
