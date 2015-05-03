//
//  Recipe.h
//  
//
//  Created by Vincent Renais on 2015-05-02.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Recipe : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) NSString * prepTime;

@end
