//
//  MyRectangle.h
//  RectangleExample
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocoll.h"
@interface MyRectangle : NSObject <MyProtocoll>
@property int widthProp;
@property int heightProp;
-(int)calcArea;

@end
