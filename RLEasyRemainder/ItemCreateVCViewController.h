//
//  ItemCreateVCViewController.h
//  RLEasyRemainder
//
//  Created by Ruoli Zhou on 16/05/2013.
//
//

#import <UIKit/UIKit.h>

@interface ItemCreateVCViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic)NSMutableArray *itemsArray;
@property (strong, nonatomic) IBOutlet UITableView *tableView;


- (IBAction)addBtn:(id)sender;

@end
