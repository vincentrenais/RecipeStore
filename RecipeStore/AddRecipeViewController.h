//
//  AddRecipeViewController.h
//  RecipeStore
//
//  Created by Vincent Renais on 2015-05-02.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Recipe.h"

@interface AddRecipeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextField *imageTextField;
@property (strong, nonatomic) IBOutlet UITextField *prepTimeTextField;

@property (strong) Recipe *selectedRecipe;

- (IBAction)save:(id)sender;
- (IBAction)cancel:(id)sender;

@end
