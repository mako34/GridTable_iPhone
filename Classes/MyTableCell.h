//
//  MyTableCell.h
//  gridTest
//
//  Created by MK SS9 on 25/02/11.
//  Copyright 2011 Neo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyTableCell : UITableViewCell {

	NSMutableArray *columns;
}

- (void)addColumn:(CGFloat) position;

@end
