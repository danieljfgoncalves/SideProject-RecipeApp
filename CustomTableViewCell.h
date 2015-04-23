//
//  CustomTableViewCell.h
//  RecipeApp
//
//  Created by Daniel Goncalves on 2015-04-22.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, strong) UILabel *labelName;
@property (nonatomic, strong) UIImageView *imageThumbnail;
@property (nonatomic, strong) UILabel *labelPrepTime;

@end
