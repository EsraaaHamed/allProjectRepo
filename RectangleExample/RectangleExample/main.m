//
//  main.m
//  RectangleExample
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MyRectangle.h"
#import "Square.h"
#import "MyTriangle.h"

int main(int argc, const char * argv[]) {
    printf("Do you want calculate of Rectangle press 1 or Square press 2  or Triangle press 3  : ");
    int choose;
    int width,height;
    scanf("%d",&choose);
    printf("please enter  height : ");
    scanf("%d",&width);
    if(choose==1)
    {
    MyRectangle *myrectangle=[MyRectangle new];
    
    printf("please enter width : ");
    scanf("%d",&height);
    [myrectangle setWidthProp:width];
    [myrectangle setHeightProp:height];
    //int result=[myrectangle calcArea];
    int result=[myrectangle calculateArea];
    printf("The Result Is : ");
    printf("%d",result);
    [myrectangle printShapeName];
    
    }
    else if(choose==2)
    {
    Square *mysquare=[Square new];
    [mysquare setWidthProp:width];
    int resulttwo=[mysquare calcArea];
    printf("The Result Is : ");
    printf("%d",resulttwo);
    }
    else
    {
        MyTriangle *myTriangle=[MyTriangle new];
        printf("please enter width : ");
        scanf("%d",&height);
        [myTriangle setWidthProp:width];
        [myTriangle setHeightProp:height];
        int resulttwo=[myTriangle calculateArea];
        
        printf("The Result Is : ");
        printf("%d",resulttwo);
         [myTriangle printShapeName];
       
    }

    return 0;
}
