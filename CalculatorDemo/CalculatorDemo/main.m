//
//  main.m
//  CalculatorDemo
//
//  Created by Esraa Hassan on 4/9/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Calculator.h"
#import "Calculator+MyCalculator.h"
int main(int argc, const char * argv[]) {
    Calculator *calculator=[Calculator new];
    
    int result,firstNum,secondNum,choose;
    Boolean keepAlive=true;
    while(keepAlive)
    {
        printf("please enter the first Num : ");
        scanf("%d",&firstNum);
        printf("please enter the second Num : ");
        scanf("%d",&secondNum);
        printf("Choose Operation you Want : \n    1)Add\n    2)Subtract\n    3)Multplication\n    4)Divide\n    5)square\n    others)exit\n");
        scanf("%d",&choose);
        result=-1;
        if(choose==1)
        {
            result=[calculator addNumbers:firstNum :secondNum];
            printf("the Result is : %d",result);
            printf("\n");
        }
        else if (choose==2)
        {
            result=[calculator subtractNumbers :firstNum :secondNum];
            printf("the Result is : %d",result);
            printf("\n");
        }
        else if (choose==3)
        {
            result=[calculator multiplyNumbers:firstNum :secondNum];
            printf("the Result is : %d",result);
            printf("\n");
        }
        else if(choose==4)
        {
            result=[calculator divideNumbers:firstNum :secondNum];
            printf("the Result is : %d",result);
            printf("\n");
        }
        else if(choose==5)
        {
            double sqrtResult=[calculator squareNum:firstNum];
            printf("the Result for the first Num is : %lf",sqrtResult);
            printf("\n");
            sqrtResult=[calculator squareNum:secondNum];
            printf("the Result for the second Num is : %lf",sqrtResult);
            printf("\n");
        }
        else
        {
            keepAlive=false;
            printf("you enterd Exit Thank You :)");
            printf("\n");
            
        }

    }
    
    return 0;
}
