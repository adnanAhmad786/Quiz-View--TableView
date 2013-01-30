//
//  QuestionDTO.h
//  CustomCellTestProject
//
//  Created by Adnan Ahmad on 29/01/2013.
//  Copyright (c) 2013 Adnan Ahmad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionDTO : NSObject

@property(nonatomic,retain)NSString *question;
@property(nonatomic,assign)BOOL isTrue;
@property(nonatomic,assign)BOOL isFalse;

+(id)initWithQuestion:(NSDictionary *)data;
@end
