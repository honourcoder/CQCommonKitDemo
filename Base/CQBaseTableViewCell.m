//
//  CQBaseTableViewCell.m
//
//  Created by CoderQi on 2019/3/7.
//  Copyright © 2019 CoderQi. All rights reserved.
//

#import "CQBaseTableViewCell.h"

@implementation CQBaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
