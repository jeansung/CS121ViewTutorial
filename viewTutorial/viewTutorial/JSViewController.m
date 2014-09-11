//
//  JSViewController.m
//  viewTutorial
//
//  Created by Jean Sung on 9/10/14.
//  Copyright (c) 2014 Jean Sung. All rights reserved.
//

#import "JSViewController.h"
#import "JSGrid.h"

@interface JSViewController () {
    UIButton* _button;
    UIView* _gridView;
}

@end

@implementation JSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //create grid frame
    CGRect frame = self.view.frame;
    CGFloat x = CGRectGetWidth(frame) *0.1;
    CGFloat y = CGRectGetHeight(frame)*0.1;
    CGFloat sizeFactor = 0.80;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))  * sizeFactor;
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    
    //create grid view
    _gridView = [[JSGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:_gridView];
    
    //create button
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0, 0, buttonSize, buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    
    // part 1: Configure button label to say "Hit me" in Blue
    // and make the text color blue
    [_button setTitle:@"Hit me" forState:UIControlStateNormal];
    UIColor* blue = [UIColor blueColor];
    [_button setTitleColor:blue forState:UIControlStateNormal];
    
    // part 2: set the button to temp highlight when pushed
    [_button setShowsTouchWhenHighlighted:YES];
    
    [_gridView addSubview:_button];
    
    //target for button
    [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 method that runs when button is pushed
 */

-(void) buttonPressed: (id) sender {
    NSLog(@"You pressed the button");
}

@end
