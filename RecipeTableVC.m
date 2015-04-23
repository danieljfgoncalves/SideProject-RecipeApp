//
//  RecipeTableVC.m
//  RecipeApp
//
//  Created by Daniel Goncalves on 2015-04-21.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "RecipeTableVC.h"
#import "Recipe.h"
#import "CustomTableViewCell.h"


@interface RecipeTableVC ()

@end

@implementation RecipeTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *bgColor = [UIColor colorWithRed:242.0/255.0f green:120.0/255.0f blue:75.0/255.0f alpha:1.0];
    self.view.backgroundColor = bgColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    // Retrieve values from the recipes.plist values.
    NSString *path = [[NSBundle mainBundle]pathForResource:@"recipe" ofType:@"plist"];
    NSDictionary *pathDict = [[NSDictionary alloc]initWithContentsOfFile:path];
    NSArray *recipeName = [pathDict objectForKey:@"Name"];
    NSArray *recipeImage = [pathDict objectForKey:@"Image"];
    NSArray *prepTime = [pathDict objectForKey:@"PrepTime"];
    
    // Create a NSMutableArray to allocate the plist values.
    self.listOfRecipes = [[NSMutableArray alloc] init];
    for (int i = 0; i < recipeName.count; i++)
    {
        Recipe *rep = [[Recipe alloc] init];
        rep.recipeName = recipeName[i];
        rep.recipeImage = recipeImage[i];
        rep.prepTime = prepTime[i];
        [self.listOfRecipes addObject:rep];
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    return [self.listOfRecipes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    Recipe *recipe = self.listOfRecipes[indexPath.row];

    
    // Configure the cell...
    if (cell == nil) {
        cell = [[CustomTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    // configure each label & imageview
    cell.labelName.text = recipe.recipeName;
    cell.labelPrepTime.text = recipe.prepTime;
//  cell.imageThumbnail.image = [UIImage imageNamed:recipe.recipeImage];
    cell.backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:recipe.recipeImage]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return self.tableView.frame.size.height/4.0f;
}

@end
