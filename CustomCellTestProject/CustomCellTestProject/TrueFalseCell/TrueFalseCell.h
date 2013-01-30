//
//  TrueFalseCell.h
//  VeriScanQR
//
//  Created by Adnan Ahmad on 26/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionDTO.h"

@interface TrueFalseCell : UITableViewCell

@property (nonatomic, assign) UIViewController *owner;
@property (nonatomic, retain) NSIndexPath *indexPath;
@property (retain, nonatomic) IBOutlet UITextView *question;
@property (retain, nonatomic) IBOutlet UIButton *trueButton;
@property (retain, nonatomic) IBOutlet UIButton *falseButton;

+(TrueFalseCell *)resuableCellForTableView:(UITableView *)tableview withOwner:(UIViewController *)owner;
-(void)updateCellWithData:(QuestionDTO*)data;

- (IBAction)trueButtonPressed:(id)sender;
- (IBAction)falseButtonPressed:(id)sender;

@end
