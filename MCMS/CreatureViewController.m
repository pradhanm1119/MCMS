//
//  CreatureViewController.m
//  MCMS
//
//  Created by Manas Pradhan on 3/18/14.
//  Copyright (c) 2014 Manas Pradhan. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UILabel *category;

@end

@implementation CreatureViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.name.text =  self.creature.name;
    self.nameTextField.alpha = 0;
}

- (IBAction)onEditButtonPressed:(id)sender
{
    self.name.alpha = 0;
    self.nameTextField.alpha = 1;
    self.nameTextField.text = self.creature.name;
}

- (IBAction)onSaveButtonPressed:(id)sender
{
    self.creature.name = self.nameTextField.text;
    self.nameTextField.alpha = 0;
    self.name.alpha = 1;
}

@end
