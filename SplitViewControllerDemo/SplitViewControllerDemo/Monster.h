//
//  Monster.h
//  SplitViewControllerDemo
//

//  Created by Varun on 02/10/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum {
    Blowgun = 0,
    NinjaStar,
    Fire,
    Sword,
    Smoke,
} Weapon;

@interface Monster : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *mydescription;
@property (nonatomic, strong) NSString *iconName;
@property (nonatomic, assign) Weapon weapon;

//Factory class method to create new monsters
+(Monster *)newMonsterWithName:(NSString *)name description:(NSString *)mydescription iconName:(NSString *)iconName weapon:(Weapon)weapon;

//Convenience instance method to get the UIImage representing the monster's weapon.

-(UIImage *)weaponImage;

@end