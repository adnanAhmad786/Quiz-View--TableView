//
//  QuestionDTO.m
//  CustomCellTestProject
//
//  Created by Adnan Ahmad on 29/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import "QuestionDTO.h"

@interface QuestionDTO ()

-(id)initWithDictionary:(NSDictionary *)dict;
@end

@implementation QuestionDTO

+(id)initWithQuestion:(NSDictionary *)data{


    return [[[QuestionDTO alloc] initWithDictionary:data] autorelease];
}

-(id)initWithDictionary:(NSDictionary *)dict{

    self=[super init];
    if (self) {
        
        self.question=[dict objectForKey:@"ques"];
        self.isTrue=[[dict objectForKey:@"isTrue"] boolValue];
        self.isTrue=[[dict objectForKey:@"isFalse"] boolValue];
        
    }

    return self;
}

-(void)dealloc{

    [_question release];
    [super dealloc];
}
@end
