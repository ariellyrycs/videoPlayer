//
//  ViewController.m
//  playVideo
//
//  Created by Ariel Robles on 3/29/15.
//  Copyright (c) 2015 Ariel Robles. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    NSURL * url = [NSURL URLWithString:@"http://download.wavetlan.com/SVV/Media/HTTP/BlackBerry.mp4"];
    MPMoviePlayerController *player = [ [ MPMoviePlayerController alloc]initWithContentURL:url];
    player.controlStyle = MPMovieControlStyleNone;
    player.scalingMode = MPMovieScalingModeAspectFill;
    player.view.frame = [[UIScreen mainScreen] applicationFrame];;
    player.backgroundView.backgroundColor = [UIColor blackColor];
    self.currentController = player;
    //[player prepareToPlay];
    [player play];
    self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:self.currentController.view];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (MPMoviePlayerController*) moviePlayer
{
    return self.currentController;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.moviePlayer setFullscreen:NO animated:NO];
}

@end
