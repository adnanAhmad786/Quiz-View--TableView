//
//  TrueFalseCell.m
//  VeriScanQR
//
//  Created by Adnan Ahmad on 26/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "TrueFalseCell.h"
#import "CustomCellHelper.h"
#import "QuizVC.h"
@implementation TrueFalseCell

@synthesize owner,indexPath;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(TrueFalseCell *)resuableCellForTableView:(UITableView *)tableview withOwner:(UIViewController *)owner{

    ///not nib name must be same as calss and identifier should be class name
    static NSString *identifer= @"TrueFalseCell";
    
    TrueFalseCell *cell = (TrueFalseCell *)[CustomCellHelper tableView:tableview cellWithIdentifier:identifer owner:owner];
   
    cell.owner = owner;
   
    return cell;
}

-(void)updateCellWithData:(QuestionDTO*)data{

    
    self.question.text=data.question;
    if (data.isTrue) {
        
        [self.falseButton setImage:[UIImage imageNamed:@"friend_unselected"] forState:UIControlStateNormal];
        [self.trueButton setImage:[UIImage imageNamed:@"friend_selected"] forState: UIControlStateNormal];

    }else if(data.isFalse){
    
        
        [self.falseButton setImage:[UIImage imageNamed:@"friend_selected"] forState:UIControlStateNormal];
        [self.trueButton setImage:[UIImage imageNamed:@"friend_unselected"] forState: UIControlStateNormal];

    }
    else{
    
        [self.falseButton setImage:[UIImage imageNamed:@"friend_unselected"] forState:UIControlStateNormal];
        [self.trueButton setImage:[UIImage imageNamed:@"friend_unselected"] forState: UIControlStateNormal];
    }
    
}

- (IBAction)trueButtonPressed:(id)sender {
    
     [(QuizVC *)owner trueButtonPressedAtIndexPath:indexPath];
}

- (IBAction)falseButtonPressed:(id)sender {
    
    [(QuizVC *)owner falseButtonPressedAtIndexPath:indexPath];
}
- (void)dealloc {
    [_question release];
    [_trueButton release];
    [_falseButton release];
    [super dealloc];
}
@end
