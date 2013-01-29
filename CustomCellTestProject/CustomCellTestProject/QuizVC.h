//
//  QuizVC.h
//  CustomCellTestProject
//
//  Created by Adnan Ahmad on 29/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizVC : UITableViewController

+(id)initWithQuiz;

-(void)trueButtonPressedAtIndexPath:(NSIndexPath *)indexPath;
-(void)falseButtonPressedAtIndexPath:(NSIndexPath *)indexPath;
@end
