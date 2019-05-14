//
//  Complex.m
//  HelloWorld
//
//  Created by Esraa Hassan on 4/8/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "Complex.h"

@implementation Complex
-(int) getReal{
    return real;
    
}
-(float) getImg;
{
    return img;
}
-(void) setReal:(int)x{
    real=x;
}
-(void) setImg :(float)y{
    img=y;
}
-(Complex*)    addComplex : (Complex*) c1 : (Complex*) c2{
    Complex *resultComplex = [Complex new ];
    int resultReal=[c1 getReal]+[c2 getReal];	
    [resultComplex setReal:resultReal];
    float resultImg=[c1 getImg]+[c2 getImg];
    [resultComplex setImg:resultReal];
    return resultComplex;
}
-(Complex*) subtractComplex : (Complex*) c1 : (Complex*) c2{
    Complex *resultComplex = [Complex new ];
    int resultReal=[c1 getReal]-[c2 getReal];
    [resultComplex setReal:resultReal];
    float resultImg=[c1 getImg]-[c2 getImg];
    [resultComplex setImg:resultReal];
    return resultComplex;
}

@end
