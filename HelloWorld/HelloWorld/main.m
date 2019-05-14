//
//  main.m
//  HelloWorld
//
//  Created by Esraa Hassan on 4/8/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Complex.h"
int main(int argc, const char * argv[]) {
    printf("HelloWorld!\n");
    NSLog(@"HelloWorld");
    Complex *resultComplex = [Complex new];
    Complex *firstComplex = [Complex new];
    [firstComplex setReal:5];
    [firstComplex setImg:5.0];

    Complex *secondComplex = [Complex new];
    [secondComplex setReal:10];
    [secondComplex setImg:20.0];
    resultComplex=[resultComplex addComplex:firstComplex:secondComplex];
    printf("\n");
    printf("%i %f", [resultComplex getReal],[resultComplex getImg]);
    printf("\n");
    return 0;
}
