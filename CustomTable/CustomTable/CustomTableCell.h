//
//  CustomTableCell.h
//  CustomTable
//
//  Created by Teresa Mao on 8/17/14.
//  Copyright (c) 2014 Teresa Mao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
