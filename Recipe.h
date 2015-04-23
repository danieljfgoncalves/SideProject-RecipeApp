//
//  Recipe.h
//  RecipeApp
//
//  Created by Daniel Goncalves on 2015-04-22.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (strong, nonatomic)NSString *recipeName;
@property (strong, nonatomic)NSString *recipeImage;
@property (strong, nonatomic)NSString *prepTime;

@end
