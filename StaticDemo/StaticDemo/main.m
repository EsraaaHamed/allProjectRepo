//
//  main.m
//  StaticDemo
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SharableClass.h"

int main(int argc, const char * argv[]) {
    SharableClass *firstObj= [SharableClass new];
    SharableClass *secondObj=[[SharableClass alloc] init];
    printf("%d",[firstObj getMyCount]);
    
    return 0;
}
