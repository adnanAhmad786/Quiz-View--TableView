//
//  CustomCellHelper.h
//  MyOmBody
//
//  Created by Jameel Khan on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


/*
 This class assumes the identifier and the class/xib names are the same
 
 */

@interface CustomCellHelper :NSObject {
    
    
}

+ (UITableViewCell *)createCellFromNib:(NSString *)nibName owner:(UIViewController *)owner;

+ (UITableViewCell *)tableView:(UITableView *)tableView cellWithIdentifier:(NSString *)identifier owner:(UIViewController *)owner;

+ (UITableViewCell *)tableView:(UITableView *)tableView cellWithStyle:(UITableViewCellStyle )style;

+ (UITableViewCell *)tableView:(UITableView *)tableView cellWithStyle:(UITableViewCellStyle )style andIndentifier:(NSString *)identifier;

@end
