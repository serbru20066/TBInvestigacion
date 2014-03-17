//
//  HomeViewController.h
//  Proyecto
//
//  Created by Alvaro Herrera on 9/03/14.
//  Copyright (c) 2014 Alvaro Herrera. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HomeViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end
