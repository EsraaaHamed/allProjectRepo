//
//  MyRectangle.m
//  RectangleWithSettersGetters
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "MyRectangle.h"

@implementation MyRectangle

-(int) getWidth{
    return width;
}
-(int) getHeight{
    return height;
}
-(void) setHeight :(int) x{
    width=x;
}
-(void) setWidth :(int) x{
    height=x;
}
-(int) calcArea{
    return width*height;
}
@end
