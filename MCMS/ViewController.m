//
//  ViewController.m
//  MCMS
//
//  Created by Manas Pradhan on 3/18/14.
//  Copyright (c) 2014 Manas Pradhan. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *creatures;
}
@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) IBOutlet UITextField *magicalCreatureTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	MagicalCreature *mc1 = [[MagicalCreature alloc] init];
    mc1.name = @"Robert Johnson";
    
    MagicalCreature *mc2 = [[MagicalCreature alloc] init];
    mc2.name = @"John Robertson";
    
    MagicalCreature *mc3 = [[MagicalCreature alloc] init];
    mc3.name = @"Seymour Butts";
    
    creatures = [[NSMutableArray alloc] init];
    
    [creatures addObject:mc1];
    [creatures addObject:mc2];
    [creatures addObject:mc3];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [creatures count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MagicalCreature *creature = [creatures objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CreatureCellID"];
    cell.textLabel.text = creature.name;
    
    return cell;
}

- (IBAction)onAddButtonPressed:(id)sender
{
    MagicalCreature *mc = [[MagicalCreature alloc] init];
    mc.name = self.magicalCreatureTextField.text;
    [creatures addObject:mc];
    [self.myTableView reloadData];
    self.magicalCreatureTextField.text = nil;
    [self.magicalCreatureTextField resignFirstResponder];
}









@end
