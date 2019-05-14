//
//  FriendsManager.h
//  FriendsAppliction
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Friend.h"

@interface FriendsManager : NSObject
{
    NSMutableArray *array;
}
-(void) addFriend :(Friend*) friend;
-(void) deleteFriend :(int) friendOfId;
-(NSMutableArray*) getAllFriends;
@end
