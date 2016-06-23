//
//  Intro.m
//  Intro Table
//
//  Created by Andrea Rosas Pérez on 20/06/16.
//  Copyright © 2016 jjpe. All rights reserved.
//

#import "Intro.h"

@interface Intro ()

@end

@implementation Intro
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
//-------------------------------------------------------------------------------
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
-(void)viewWillAppear:(BOOL)animated {
    self.lblIntro.text  = maIntroTitles[self.iPageIndex];
    self.imgIntro.image = [UIImage imageNamed:maIntroImgs[self.iPageIndex]];
    
    if(self.iPageIndex == 2){
        self.btnIntro.hidden = NO;
    }
}

/**********************************************************************************************/
#pragma mark - Actions methods
/**********************************************************************************************/
- (IBAction)btnIntroPressed:(id)sender {
    Home *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"Home"];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
