/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: Vinayak
 *
 * Created on 14 November, 2016, 5:30 PM
 */

#include <cstdlib>
#include<stdio.h>
using namespace std;

/*
 * 
 */
int main(int argc, char** argv) {

    int num;
    printf("Enter your number:\n");
    fflush(stdout);
    scanf("%d",&num);
    printf("Hello World! Your number is %d",num);
    fflush(stdout);
    return 0;
}

