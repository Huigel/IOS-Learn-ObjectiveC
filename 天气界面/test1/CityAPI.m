//
//  CityAPI.m
//  test1
//
//  Created by 李浩宇 on 2021/5/15.
//

#import "CityAPI.h"

@implementation CityAPI



+(struct City*) getCity{
    static struct City city[2]={
        {
            @"wuhan",
            
            @"rainy",25,
            @"rainy",28,18,
            @"rainy",21,14,
            @"cloudy",23,17,
            @"cloudy",23,17,
            @"rainy",21,18
        },
        {
            @"beijing",
            
            @"cloudy",17,
            @"cloudy",27,13,
            @"sunny",28,20,
            @"sunny",25,18,
            @"sunny",27,21,
            @"cloudy",22,19
        }
    };
    return city;
    
}



@end
