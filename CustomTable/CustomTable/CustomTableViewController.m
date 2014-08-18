//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by Teresa Mao on 8/17/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableCell.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
{
    NSArray *recipeNames;
    NSArray *recipeImages;
    NSArray *cookTime;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    
    [self.tableView setContentInset:UIEdgeInsetsMake(20, self.tableView.contentInset.left,self.tableView.contentInset.bottom, self.tableView.contentInset.right)];
    
    recipeNames = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
    recipeImages = [NSArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg",
                    @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg",
                    @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg",
                    @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg",
                    @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg",
                    nil];
    
    cookTime = [NSArray arrayWithObjects:@"30 min", @"30 min",
                    @"20 min", @"30 min", @"10 min", @"1 hour",
                    @"45 min", @"5 min", @"30 min",
                    @"2 min", @"35 min", @"45 min",
                    @"3 min", @"20 min", @"1 hour", @"10 min",
                    nil];
    
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipeNames count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath
                                                                               *)indexPath
{
    static NSString *CellIdentifier = @"CustomTableCell";
    CustomTableCell *cell = (CustomTableCell *)[tableView
                                                dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure the cell...
    if (cell == nil) {
        cell = [[CustomTableCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:CellIdentifier];
    }
    // Display recipe in the table cell
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages
                                                         objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [cookTime objectAtIndex:indexPath.row];
    return cell;
}

@end
