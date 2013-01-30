//
//  QuizVC.m
//  CustomCellTestProject
//
//  Created by Adnan Ahmad on 29/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "QuizVC.h"
#import "TrueFalseCell.h"
#import "QuestionDTO.h"
@interface QuizVC ()

-(void)initalizeData;

@end

@implementation QuizVC

@synthesize quizArray=_quizArray;
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
    [self initalizeData];
}
-(void)initalizeData
{
    self.quizArray=[NSMutableArray array];

    for (int i=0; i< 20; i++) {
        
        NSMutableDictionary *dict=[NSMutableDictionary dictionary];
        [dict setObject:[NSString stringWithFormat:@"%d",i] forKey:@"ques"];
        [dict setObject:[NSNumber numberWithBool:NO] forKey:@"isTrue"];
        [dict setObject:[NSNumber numberWithBool:NO] forKey:@"isFalse"];
        [self.quizArray addObject:[QuestionDTO initWithQuestion:dict]];
        
    }

    [self.tableView reloadData];
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
    
    QuestionDTO *queston=[self.quizArray objectAtIndex:indexPath.row];
    TrueFalseCell *cell=[TrueFalseCell resuableCellForTableView:self.tableView withOwner:self];
    [cell updateCellWithData:queston];
    cell.indexPath=indexPath;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
        
    return 44.0;
}


////These Methods let you know which indexPath of a table view is get selected
-(void)trueButtonPressedAtIndexPath:(NSIndexPath *)indexPath{

    QuestionDTO *question=[self.quizArray objectAtIndex:indexPath.row];
    question.isTrue=YES;
    question.isFalse=NO;
    [self.quizArray replaceObjectAtIndex:indexPath.row withObject:question];
    [self.tableView reloadData];
    
   
}
-(void)falseButtonPressedAtIndexPath:(NSIndexPath *)indexPath{

    
    QuestionDTO *question=[self.quizArray objectAtIndex:indexPath.row];
    question.isTrue=NO;
    question.isFalse=YES;
    [self.quizArray replaceObjectAtIndex:indexPath.row withObject:question];
    [self.tableView reloadData];
    
  }
@end
