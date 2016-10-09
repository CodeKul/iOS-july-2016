//
//  ViewController.m
//  AudioVideoDemo
//
//  Created by Varun on 17/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController ()
{
    AVAudioPlayer *musicPlayer;
    NSTimer *timer;
    AVPlayerViewController *videoPlayer;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"SpiderMan" ofType: @"mp3"];
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:soundFilePath];

    musicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    
    slider.maximumValue = musicPlayer.duration;
    slider.minimumValue = 0;
    lblTime.text = @"0.0";
    
    
    videoPlayer = [[AVPlayerViewController alloc] init];
    videoPlayer.player = [AVPlayer playerWithURL:[[NSBundle mainBundle] URLForResource:@"SpiderMan" withExtension:@"mp4"]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)playMusic:(id)sender {
    
    slider.value = 0;
    [musicPlayer play];
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(sliderValueChanged:) userInfo:nil repeats:YES];
    
}

-(IBAction)stopMusic:(id)sender {
    
    [musicPlayer stop];
    [timer invalidate];
}

-(void) sliderValueChanged:(NSTimer *)timer {
    
    
    lblTime.text = [NSString stringWithFormat:@"%.2f",slider.value];
    slider.value = musicPlayer.currentTime;
    
}

-(IBAction)playVideo:(id)sender {
    
    [videoPlayer.player play];
    [self presentViewController:videoPlayer animated:YES completion:nil];

}

@end
