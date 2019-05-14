//
//  MyTriangle.m
//  RectangleExample
//
//  Created by Esraa Hassan on 4/10/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "MyTriangle.h"

@implementation MyTriangle

- (int)calculateArea {
    return ([self widthProp]*[self heightProp])/2;
}
-(void) printShapeName
{
    printf("this it a Triangle Shape \n");
}

@end
