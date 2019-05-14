//
//  Complex.h
//  HelloWorld
//
//  Created by Esraa Hassan on 4/8/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    int real;
    float img;
}
-(void)firstMethod :(int)x;
-(int) getReal;
-(float) getImg;
-(void) setReal:(int)x;
-(void) setImg :(float)y;
-(Complex*)    addComplex : (Complex*) c1 : (Complex*) c2;
-(Complex*) subtractComplex : (Complex*) c1 : (Complex*) c2;
@end
