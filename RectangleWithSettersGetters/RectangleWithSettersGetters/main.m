//
//  main.m
//  RectangleWithSettersGetters
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MyRectangle.h"
int main(int argc, const char * argv[]) {
    int width,height,result;
    printf("Please enter The Height : ");
    scanf("%d",&height);
    printf("Please enter The Width : ");
    scanf("%d",&width);
    MyRectangle *myRectangle =[MyRectangle new];
    [myRectangle setHeight:height];
    [myRectangle setWidth:width];
    result=[myRectangle calcArea];
    printf("The Result Is : %d",result);
    return 0;
}
