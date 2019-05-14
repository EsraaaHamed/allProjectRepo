//
//  MyRectangle.m
//  RectangleExample
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "MyRectangle.h"

@implementation MyRectangle
-(int)calcArea
{
    return [self widthProp]*[self heightProp];
}
- (int)calculateArea {
    return [self widthProp]*[self heightProp];
}
-(void) printShapeName
{
    printf("this is a Rectangle shape \n");
}


@end
