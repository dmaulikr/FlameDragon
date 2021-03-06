//
//  GameWinLayer.m
//  FlameDragon
//
//  Created by sui toney on 12-1-20.
//  Copyright 2012 ms. All rights reserved.
//

#import "GameWinLayer.h"
#import "FDSprite.h"
#import "TitleScene.h"
#import "FDWindow.h"

@implementation GameWinLayer


-(id) init
{
	self = [super init];
	
	
	FDSprite *bg = [[FDSprite alloc] initWithString:@"To Be Continue..." Size:20];
	[bg setLocation:[FDWindow downRight]];
	
	[self addChild:[bg getSprite]];
	// [bg addToLayer:self];
	
	return self;
}

-(void) ccTouchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
	
	[self onClose];
}


-(void) onClose
{
	CCScene *scene = [TitleScene node];
	[[CCDirector sharedDirector] pushScene: [CCTransitionFade transitionWithDuration:1.0 scene:scene]];
	
}


@end
