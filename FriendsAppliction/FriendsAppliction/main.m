//
//  main.m
//  FriendsAppliction
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Friend.h"
#import "FriendsManager.h"
int main(int argc, const char * argv[]) {

    FriendsManager *friendsManager=[FriendsManager new];
    
    int choose;
    printf("Choose Operation you Want : \n    1)Add Friend\n    2)delete Friend\n    3)get all Friends\n");
    scanf("%d",&choose);
    int friendID = 0;
    NSString* name;
    int age;
    NSString* phone;
    NSString* email;
    char arrayChar[50];
    if(choose==1)
    {
    printf("please enter the ID: ");
        scanf("%d",&friendID);
    printf("please enter the Name: ");
    scanf("%s",arrayChar);
        name=[NSString stringWithCString:arrayChar encoding:1];
    printf("please enter the age: ");
        scanf("%d",&age);
    printf("please enter the Email: ");
        scanf("%s",arrayChar);
        email=[NSString stringWithCString:arrayChar encoding:1];
    printf("please enter the Phone: ");
        scanf("%s",arrayChar);
        phone=[NSString stringWithCString:arrayChar encoding:1];
        Friend *friend = [[Friend alloc]initWithID :friendID
                                            andName:name
                                              andAge:age
                                           andPhone:phone
                                            andEmail:email];
        [friendsManager addFriend:friend];

    }
    else if(choose==2)
    {
        printf("please enter the ID: ");
        scanf("%d",&friendID);
        [friendsManager deleteFriend:friendID];
    }
    else if(choose==3)
    {
        NSMutableArray *array=[[NSMutableArray alloc] init];
        array=[friendsManager getAllFriends];
        for(int i=0; i<[array count]; i++)
        {
            [array[i] printFriend];
        }
    }

    
    return 0;
}
