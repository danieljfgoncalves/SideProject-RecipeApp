//
//  DetailViewController.h
//  RecipeApp
//
//  Created by Daniel Goncalves on 2015-04-27.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) UILabel *recipeNameLabel;
@property (strong, nonatomic) NSString *recipeName;

@property (strong, nonatomic) UILabel *recipePrepTimeLabel;
@property (strong, nonatomic) NSString *recipePrepTime;

@property (strong, nonatomic) UIImageView *recipeImageView;
@property (strong, nonatomic) NSString *recipeImage;

@end
