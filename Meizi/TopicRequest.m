//
//  TopicRequest.m
//  Meizi
//
//  Created by Sunnyyoung on 15/7/15.
//  Copyright (c) 2015年 Sunnyyoung. All rights reserved.
//

#import "TopicRequest.h"

@interface TopicRequest()

@property (nonatomic) NSInteger page;
@property (nonatomic) NSString *groupID;

@end

@implementation TopicRequest

- (instancetype)initWithPage:(NSInteger)page groupdID:(NSString *)groupID {
    self = [super init];
    if (self) {
        _page = page;
        _groupID = groupID?groupID:@"";
    }
    return self;
}

- (NSString *)requestUrl {
    return @"/api/dbmeinv.htm";
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodPost;
}

- (id)requestArgument {
    return @{@"m": @"topics",
             @"pageIndex": @(_page),
             @"groupId": _groupID};
}

@end
