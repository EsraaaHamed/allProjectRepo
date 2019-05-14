//
//  SharableClass.m
//  StaticDemo
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SharableClass.h"

@implementation SharableClass
int static myCount;
-(SharableClass*)init {
    if (self = [super init]) {
        myCount++;
    }
    return self;
}
-(int) getMyCount
{
    return myCount;
}
@end
