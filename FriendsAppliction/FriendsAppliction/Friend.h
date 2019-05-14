//
//  Friend.h
//  FriendsAppliction
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Friend : NSObject
{
/*char [] name;
char email[];
char phone[];*/
/*@property char name[];
@property char email[];
@property char[] phone;*/
}
-(Friend*) initWithID:(int) friendID
                   andName:(NSString*)name
                    andAge:(int) age
                  andPhone:(NSString*) phone
                  andEmail:(NSString*)email;


@property int friendId;
@property int age;
@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString *email;
@property (nonatomic,strong)NSString *phone;
-(void)printFriend;
@end
