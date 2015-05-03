//
//  AddRecipeViewController.m
//  RecipeStore
//
//  Created by Vincent Renais on 2015-05-02.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import "AddRecipeViewController.h"
#import "AppDelegate.h"

@interface AddRecipeViewController ()

@end

@implementation AddRecipeViewController

{
    Recipe *recipe;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender
{
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *manageObjectContext = [appDelegate managedObjectContext];
    recipe = (Recipe *)[NSEntityDescription insertNewObjectForEntityForName:@"Recipe" inManagedObjectContext:manageObjectContext];
    recipe.name = self.nameTextField.text;
    recipe.image = self.imageTextField.text;
    recipe.prepTime = self.prepTimeTextField.text;
    NSError *error;
    if (![manageObjectContext save:&error]){
        NSLog(@"Can't save! %@ %@", error, [error localizedDescription]);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancel:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
