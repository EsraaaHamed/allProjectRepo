//
//  Calculator.m
//  CalculatorDemo
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
-(int) addNumbers : (int) firstNum : (int) secondNum
{
    return firstNum+secondNum;
}
-(int) subtractNumbers : (int) firstNum : (int) secondNum;
{
    return firstNum-secondNum;
}
-(int) multiplyNumbers : (int) firstNum : (int) secondNum;
{
    return firstNum*secondNum;
}
-(int) divideNumbers : (int) firstNum : (int) secondNum;
{
    return firstNum/secondNum;
}

@end
