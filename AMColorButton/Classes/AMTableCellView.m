//
//  AMTableCellView.m
//  AMColorButton
//
//  Created by Daria Kovalenko on 2/11/15.
//  Copyright (c) 2015 anadea. All rights reserved.
//

#import "AMTableCellView.h"

@interface AMTableCellView ()

@end

@implementation AMTableCellView

-(id)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if(self) {
        [self setDefaults];
    }
    return self;
}

-(id)init {
    self = [super init];
    if(self) {
        [self setDefaults];
    }
    return self;
}

-(id)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    if (self) {
        [self setDefaults];
    }
    return self;
}

- (void)setDefaults {
    self.borderColor = [NSColor colorWithSRGBRed:180.0/255.0 green:180.0/255.0 blue:180.0/255.0 alpha: 1.0];
    self.borderHighlightedColor = [NSColor colorWithSRGBRed:157.0/255.0 green:201.0/255.0 blue:248.0/255.0 alpha:1.0];
    [self drawBorder];
}

- (void)drawBorder {
    [self setWantsLayer:YES];
    [self.layer setBorderWidth:self.highlighted ? 3.0 : 1.0];
    [self.layer setBorderColor:(self.highlighted ? self.borderHighlightedColor : self.borderColor).CGColor];
}

- (void)setHighlighted:(BOOL)highlighted {
    _highlighted = highlighted;
    [self drawBorder];
}

@end