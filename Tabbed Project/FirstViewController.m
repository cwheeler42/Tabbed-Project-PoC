//
//  FirstViewController.m
//  Tabbed Project
//
//  Created by Chris Wheeler on 5/20/20.
//  Copyright © 2020 Chris Wheeler. All rights reserved.
//

#import "FirstViewController.h"
#import <Tabbed_Project-Swift.h>


@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self.navigationController addCustomTransitioning];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    UILabel *theLabel = [[UILabel alloc] init];
    theLabel.text = [NSString stringWithFormat:@"Table Row %ld", (long)indexPath.row];
    theLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    [cell.contentView addSubview:theLabel];
    [theLabel.heightAnchor constraintEqualToConstant:22.0f].active = YES;
    [theLabel.centerYAnchor constraintEqualToAnchor:cell.contentView.centerYAnchor].active = YES;
    [theLabel.leadingAnchor constraintEqualToAnchor:cell.contentView.leadingAnchor constant:15.0f].active = YES;
    [cell.contentView.trailingAnchor constraintEqualToAnchor:theLabel.trailingAnchor constant:15.0f].active = YES;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    UIViewController *newVC = [storyboard instantiateViewControllerWithIdentifier:@"firstSubViewController"];
//    NSMutableArray *vcs = [[NSMutableArray alloc] initWithCapacity:[self.tabBarController viewControllers].count];
//    for (UIViewController *vc in [self.tabBarController viewControllers]) {
//        // Replace the "first" VC with the new one
//        // We now have a possibility of one of two Welcome ViewControllers (the old style and the new until we remove the A/B test).
//        if ([vc isKindOfClass:[FirstViewController class]]) {
//            [vcs addObject:newVC];
//        }
//        else {
//            [vcs addObject:vc];
//        }
//    }
//    [self.tabBarController setViewControllers:vcs animated:YES];

    [self performSegueWithIdentifier:@"firstViewSegue" sender:self];
}

@end
