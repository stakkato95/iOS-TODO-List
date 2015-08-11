//
//  TODOItemViewController.m
//  TODOList
//
//  Created by Artsiom Kaliaha on 10/08/15.
//  Copyright (c) 2015 Artsiom Kaliaha. All rights reserved.
//

#import "TODOItemViewController.h"

@interface TODOItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation TODOItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if (sender != self.saveButton) {
        return;
    }
    if (self.textField.text.length > 0) {
        self.toDoItem = [[TODOItem alloc] init];
        self.toDoItem.name = self.textField.text;
        self.toDoItem.isCompleted = NO;
    }
}

@end
