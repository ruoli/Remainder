//
//  ItemCreateVCViewController.m
//  RLEasyRemainder
//
//  Created by Ruoli Zhou on 16/05/2013.
//
//

#import "ItemCreateVCViewController.h"

@interface ItemCreateVCViewController ()

@end

@implementation ItemCreateVCViewController

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
    [super viewDidLoad];
	self.itemsArray = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addBtn:(id)sender
{
    [self.itemsArray addObject:self.textField.text];
    [self.tableView reloadData];
    
    int i;
    for (i = 0; i < [self.itemsArray count]; i++)
    {
        NSString *test  = [self.itemsArray objectAtIndex:i];
        NSLog(@"%@", test);
    }
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.itemsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell.textLabel.text = [self.itemsArray objectAtIndex:indexPath.row];
    
    return cell;
}


@end
