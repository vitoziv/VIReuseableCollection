//
//  ViewController.m
//  VIReuseableCollection
//
//  Created by Vito on 13-11-10.
//  Copyright (c) 2013年 Vito. All rights reserved.
//

#import "ViewController.h"
#import "VIArrayDataSource.h"

@interface ViewController () {
    VIArrayDataSource *arrayDataSource;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    arrayDataSource = [[VIArrayDataSource alloc] initWithItems:@[@"cell 1", @"cell 2", @"cell 3"]
                                                cellIdentifier:@"My Cell"
                                            configureCellBlock:^(UITableViewCell *cell, NSString *item) {
                                                cell.textLabel.text = item;
                                            }];
    
    self.tableView.dataSource = arrayDataSource;
}


@end
