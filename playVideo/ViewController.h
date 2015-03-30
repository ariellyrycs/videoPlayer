//
//  ViewController.h
//  playVideo
//
//  Created by Ariel Robles on 3/29/15.
//  Copyright (c) 2015 Ariel Robles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController : UIViewController
@property (retain, nonatomic) MPMoviePlayerController *currentController;
- (MPMoviePlayerController*) moviePlayer;
@end

