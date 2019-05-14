//
//  FriendsManager.m
//  FriendsAppliction
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "FriendsManager.h"


@implementation FriendsManager
-(FriendsManager*) init
{
    self=[super init];
    if(self)
    {
        Friend *friend1 = [[Friend alloc]initWithID :1
                                             andName:@"Esraa"
                                              andAge:5 andPhone:@"011"
                                            andEmail:@"Esraa@gmail.com"];
        self->array=[[NSMutableArray alloc] initWithArray:@[friend1]];
    }
    return self;
}
-(void) addFriend :(Friend*) friend;
{
    [array addObject:friend];
    for(int i=0; i<[array count]; i++)
    {
        [array[i] printFriend];
    }
}
-(void) deleteFriend :(int) friendOfId;
{
    for(int i=0; i<[array count]; i++)
    {
        if(i<[array count]&& friendOfId==[array[i] friendId])
        {
            [array removeObjectAtIndex:friendOfId];
            break;
        }
    }
    for(int i=0; i<[array count]; i++)
    {
        [array[i] printFriend];
    }
}
-(NSMutableArray*) getAllFriends;
{
    
    return array;
}
//
@end
