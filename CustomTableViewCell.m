//
//  CustomTableViewCell.m
//  RecipeApp
//
//  Created by Daniel Goncalves on 2015-04-22.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    // Custom Styling
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
//        self.backgroundColor = [UIColor colorWithRed:255/255.0f green:255/255.0f blue:255/255.0f alpha:0.9];
        
        // Change Selection Style
//        self.selectionStyle = UITableViewCellSelectionStyleNone;
        UIView *selectedBGColorView = [[UIView alloc] init];
        selectedBGColorView.backgroundColor = [UIColor colorWithRed:255/255.0f green:255/255.0f blue:255/255.0f alpha:0.3];
        [self setSelectedBackgroundView:selectedBGColorView];
        
        // Set Labels & Settings
        self.labelName = [[UILabel alloc]init];
        self.labelName.textAlignment = NSTextAlignmentCenter;
        self.labelName.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.labelName];
        
        self.labelPrepTime = [[UILabel alloc]init];
        self.labelPrepTime.font = [UIFont systemFontOfSize:13.0f];
        self.labelPrepTime.textAlignment = NSTextAlignmentCenter;
        self.labelPrepTime.textColor = [UIColor colorWithRed:108.0f/255.0f green:122.0f/255.0f blue:137.0f/255.0f alpha:1.0f];
        self.labelPrepTime.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.labelPrepTime];
        
        UIImageView *labelsBG = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.contentView.frame.size.width, 45)];
        labelsBG.opaque = NO;
        labelsBG.backgroundColor = [UIColor colorWithRed:242.0/255.0f green:120.0/255.0f blue:75.0/255.0f alpha:1.0f];
        labelsBG.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleTopMargin;
        [self addSubview:labelsBG];
        [self sendSubviewToBack:labelsBG];
        
        // Set Constrains
            // Vertical Constrains
        NSArray *constraintsLabels = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_labelName][_labelPrepTime]-5-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_labelName, _labelPrepTime)];
        [self addConstraints:constraintsLabels];
//        NSArray *constraintsLabelName = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_labelName]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_labelName)];
//        [self addConstraints:constraintsLabelName];
//        NSArray *constraintsLabelPrepTime = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_labelPrepTime]-5-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_labelPrepTime)];
//        [self addConstraints:constraintsLabelPrepTime];
        
            // Horizontal Constrains
        UIView *spacer1 = [UIView new];
        spacer1.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:spacer1];
        UIView *spacer2 = [UIView new];
        spacer2.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:spacer2];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[spacer1][_labelName][spacer2(==spacer1)]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_labelName, spacer1, spacer2)]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[spacer1][_labelPrepTime][spacer2(==spacer1)]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_labelPrepTime, spacer1, spacer2)]];
        
    }
    
    return self;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
