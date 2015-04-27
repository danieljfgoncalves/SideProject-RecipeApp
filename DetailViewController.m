//
//  DetailViewController.m
//  RecipeApp
//
//  Created by Daniel Goncalves on 2015-04-27.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"%f", self.navigationController.navigationBar.frame.size.height);
    
    // Set Image
    self.recipeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0.00f, 44.00f, self.view.frame.size.width, 200.0f)];
    [self.view addSubview:self.recipeImageView];
    
    //Set Labels
    self.recipeNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 244.0f, self.view.frame.size.width, 40.0f)];
    self.recipeNameLabel.backgroundColor = [UIColor colorWithRed:242.0/255.0f green:120.0/255.0f blue:75.0/255.0f alpha:1.0f];
    self.recipeNameLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.recipeNameLabel];
    self.recipePrepTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 289.0f, self.view.frame.size.width-10.0f, 20.0f)];
    self.recipePrepTimeLabel.textAlignment = NSTextAlignmentRight;
    self.recipePrepTimeLabel.textColor = [UIColor colorWithRed:108.0f/255.0f green:122.0f/255.0f blue:137.0f/255.0f alpha:1.0f];
    [self.view addSubview:self.recipePrepTimeLabel];
    
    // Connection with RecipeTableVC
    self.recipeNameLabel.text = self.recipeName;
    self.recipePrepTimeLabel.text = self.recipePrepTime;
    self.recipeImageView.image = [UIImage imageNamed:self.recipeImage];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
