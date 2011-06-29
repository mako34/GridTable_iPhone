//
//  MyTableCell.m
//  gridTest
//
//  Created by MK SS9 on 25/02/11.
//  Copyright 2011 Neo. All rights reserved.
//

#import "MyTableCell.h"


@implementation MyTableCell

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
		//initialization code
		columns = [NSMutableArray arrayWithCapacity:5];
		[columns retain];
	}
				return self;
	}

- (void) addColumn:(CGFloat)position {
	[columns addObject:[NSNumber numberWithFloat:position]];
}

-(void) setSelected:(BOOL)selected animated:(BOOL)animated {
	[super setSelected:selected animated:animated];	
}

- (void) drawRect:(CGRect)rect {
	CGContextRef ctx = UIGraphicsGetCurrentContext();
	
	//just match color and size of horizontal line
	CGContextSetRGBStrokeColor(ctx, 0.5, 0.5, 0.5, 1.0); 
	CGContextSetLineWidth(ctx, 0.25);
	
	for (int i= 0; i < [columns count]; i++) {
		//get position for vertical line
		CGFloat f = [((NSNumber*) [columns objectAtIndex:i]) floatValue];
		CGContextMoveToPoint(ctx, f, 0);
		CGContextAddLineToPoint(ctx, f, self.bounds.size.height);
	}
	
	CGContextStrokePath(ctx);
	
	[super drawRect:rect];
	
}

-(void)dealloc {
	[super dealloc];
	[columns dealloc];
}
	
@end
