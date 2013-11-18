//
//  MyCell.m
//  Buttons
//
//  Created by Andrew Pontious on 11/15/13.
//  Copyright (c) 2013 Andrew Pontious. All rights reserved.
//

#import "MyCell.h"

@interface MyCell ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation MyCell

-(NSArray *)accessibilityElements
{
    return @[self.image, self.button];
}

- (NSInteger)accessibilityElementCount
{
    return [self accessibilityElements].count;
}

- (id)accessibilityElementAtIndex:(NSInteger)index
{
    NSArray *accessibilityElements = [self accessibilityElements];
    if(index >= 0 && index < accessibilityElements.count) {
        return accessibilityElements[index];
    }
    return nil;
}

- (NSInteger)indexOfAccessibilityElement:(id)element
{
    return [[self accessibilityElements] indexOfObject:element];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    scrollView.contentOffset = CGPointMake(0, 0);
}

@end
