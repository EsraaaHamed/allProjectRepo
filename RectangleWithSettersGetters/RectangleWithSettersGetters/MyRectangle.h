//
//  MyRectangle.h
//  RectangleWithSettersGetters
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyRectangle : NSObject
{
    int width,height;
}
-(int) getWidth;
-(int) getHeight;
-(void) setHeight :(int) x;
-(void) setWidth :(int) x;
-(int) calcArea;
@end
