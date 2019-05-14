//
//  Friend.m
//  FriendsAppliction
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "Friend.h"

@implementation Friend
-(instancetype) initWithID:(int) friendID
                   andName:(NSString*)name
                    andAge:(int) age
                  andPhone:(NSString*) phone
                    andEmail:(NSString*)email
{
    self=[super init];
    if(self)
    {
        self.friendId=friendID;
        self.name=name;
        self.age=age;
        self.phone=phone;
        self.email=email;
    }
    return self;
}
-(void)printFriend
{
    printf("%d",[self friendId]);
    NSLog(@"%@",self.name);
    NSLog(@"%@",self.email);
    printf("%d",[self age]);
    NSLog(@"%@",self.phone);
}


@end
