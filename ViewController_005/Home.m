//
//  ViewController.m
//  ViewController_005
//
//  Created by AlejandroRuiz on 6/29/16.
//  Copyright © 2016 AlejandroRuiz. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *homeArray;
@end

@implementation Home

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view, typically from a nib.
}

//-------------------------------------------------------------------------------

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    self.homeArray   = [[NSMutableArray alloc] initWithObjects: @"Equipo 1", @"Equipo 2", @"Equipo 3", @"Equipo 4", @"Equipo 5", nil];
    
    //self.avengerImgs   = [[NSMutableArray alloc] initWithObjects: @"captain.png", @"ironman.png", @"blackwidow.png", @"hulk.png", @"thor.png", @"spiderman.png", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.homeArray.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 120; // Size of cell
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
   // cell.lblName.text       = self.avengerNames[indexPath.row];
   // cell.imgAvenger.image   = [UIImage imageNamed:self.avengerImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
