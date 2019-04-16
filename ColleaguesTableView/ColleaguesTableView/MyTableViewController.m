//
//  MyTableViewController.m
//  ColleaguesTableView
//
//  Created by JETS Mobil Lab -  on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "MyTableViewController.h"
#import "Colleague.h"
#import "ViewController.h"
@interface MyTableViewController ()

@end

@implementation MyTableViewController{
    NSMutableArray *maleColleagues;
    NSMutableArray *femaleColleagues;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    maleColleagues=[NSMutableArray new];
    femaleColleagues=[NSMutableArray new];
    
    [maleColleagues addObject:[[Colleague alloc] initWithName: @"ahmed" : @"01120020928" : 23 : @"ahmed@gamil.com" : @"amyria"]];
    [maleColleagues addObject:[[Colleague alloc] initWithName: @"Eslam" : @"01112420928" : 22 : @"eslam@gamil.com" : @"Ain Shams"]];
    [maleColleagues addObject:[[Colleague alloc] initWithName: @"shrief" : @"01115434316" : 22 : @"shrief@gamil.com" : @"faysal"]];
    
    [femaleColleagues addObject:[[Colleague alloc] initWithName: @"Rana" : @"016645434316" : 20 : @"rana@gamil.com" : @"amyria"]];
     [femaleColleagues addObject:[[Colleague alloc] initWithName: @"rehab" : @"01267843435" : 26 : @"rehab@gamil.com" : @"maadi"]];
     
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    
    NSInteger numOfSection;
    switch (section) {
        case 0:
            numOfSection=[maleColleagues count];
            break;
        case 1:
            numOfSection=[femaleColleagues count];
            break;
        default:
            numOfSection=0;
            break;
    }
    
    return numOfSection;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text=[[maleColleagues objectAtIndex:indexPath.row] name];
            cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
            break;
            
        case 1:
            cell.textLabel.text=[[femaleColleagues objectAtIndex:indexPath.row] name];
            cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
            break;
        default:
            break;
    }
    
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewController *secondVC= [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewID"];
    switch (indexPath.section) {
        case 0:
            secondVC.colleagueObject=[maleColleagues objectAtIndex:indexPath.row];
            break;
            
        case 1:
            secondVC.colleagueObject=[femaleColleagues objectAtIndex:indexPath.row];
            break;
        default:
            break;
    }
    
    
    
    [self.navigationController pushViewController:secondVC animated:NO];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Males";
            break;
        case 1:
            return @"Females";
            break;
        default:
            break;
    }
    return @"";
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
