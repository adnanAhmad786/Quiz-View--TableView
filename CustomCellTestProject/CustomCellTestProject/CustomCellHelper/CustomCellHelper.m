//
//  CustomCellHelper.m
//  MyOmBody
//
//  Created by Jameel Khan on 7/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CustomCellHelper.h"


@implementation CustomCellHelper


+(UITableViewCell *)createCellFromNib:(NSString *)nibName owner:(UIViewController *)owner
{

    NSArray* nibContents = [[NSBundle mainBundle] loadNibNamed:nibName owner:owner options:nil]; 
    NSEnumerator *nibEnumerator = [nibContents objectEnumerator]; 
    UITableViewCell* tCell = nil; 
    NSObject* nibItem = nil; 
    while ( (nibItem = [nibEnumerator nextObject]) != nil) { 
        if ( [nibItem isKindOfClass: [UITableViewCell class]]) { 
            tCell = (UITableViewCell*) nibItem; 
            break;
        } 
    } 
    return tCell; 

}

+ (UITableViewCell *)tableView:(UITableView *)tableView cellWithIdentifier:(NSString *)identifier owner:(UIViewController *)owner
{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [CustomCellHelper createCellFromNib:identifier owner:owner];
    }else{
        
        NSLog(@"Cell with identifier %@ resued",identifier);
    }


    return cell;

}

+ (UITableViewCell *)tableView:(UITableView *)tableView cellWithStyle:(UITableViewCellStyle )style {
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:style reuseIdentifier:CellIdentifier] autorelease];
    }
    cell.accessoryType= UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}


+ (UITableViewCell *)tableView:(UITableView *)tableView cellWithStyle:(UITableViewCellStyle )style andIndentifier:(NSString *)identifier{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:style reuseIdentifier:identifier] autorelease];
    }
    cell.accessoryType= UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}




- (void)dealloc
{
    [super dealloc];
}

@end
