//
//  QuizVC.m
//  CustomCellTestProject
//
//  Created by Adnan Ahmad on 29/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "QuizVC.h"
#import "TrueFalseCell.h"
@interface QuizVC ()

@end

@implementation QuizVC

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

+(id)initWithQuiz{

    return [[[QuizVC alloc] initWithNibName:@"QuizVC" bundle:nil] autorelease];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    TrueFalseCell *cell=[TrueFalseCell resuableCellForTableView:self.tableView withOwner:self];
    [cell updateCellWithData:nil];
    cell.indexPath=indexPath;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
        
    return 44.0;
}


////These Methods let you know which indexPath of a table view is get selected
-(void)trueButtonPressedAtIndexPath:(NSIndexPath *)indexPath{

    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"True Button Selected"
                                                  message:[NSString stringWithFormat:@"IndexPath.row is %d",indexPath.row]
                                                 delegate:nil
                                        cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
    [alert release];
}
-(void)falseButtonPressedAtIndexPath:(NSIndexPath *)indexPath{

    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"False Button Selected"
                                                  message:[NSString stringWithFormat:@"IndexPath.row is %d",indexPath.row]
                                                 delegate:nil
                                        cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
    [alert release];

}
@end
