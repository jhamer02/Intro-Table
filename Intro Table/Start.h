//
//  ViewController.h
//  Intro Table
//
//  Created by Andrea Rosas Pérez on 20/06/16.
//  Copyright © 2016 jjpe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Intro.h"

@interface Start : UIViewController<UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (strong, strong) UIPageViewController *pageViewController;
@property (strong, nonatomic) IBOutlet UIButton *btnSkip;
- (IBAction)btnSkipPressed:(id)sender;

@end

