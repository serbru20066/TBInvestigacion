//
//  OpcBusqViewController.h
//  TBInvestigacion
//
//  Created by bruno on 16/03/14.
//  Copyright (c) 2014 brunoCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OpcBusqViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *arrayData;
    UITableView *table;
    
    NSAttributedString *text1;
    NSAttributedString *text2;
    NSAttributedString *text3;
    NSAttributedString *text4;
}

@end
