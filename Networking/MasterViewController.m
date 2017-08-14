//
//  MasterViewController.m
//  Networking
//
//  Created by Sam Meech-Ward on 2017-08-14.
//  Copyright © 2017 Sam Meech-Ward. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()

@property NSMutableArray *objects;
@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // I need my URL
    // GET the data
    
    // Setup the url request using the url and the http method
    NSURL *url = [NSURL URLWithString:@"https://api.github.com/users/lighthouse-labs/repos"];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
    urlRequest.HTTPMethod = @"GET";
    
    // SEtup a url session so we can make a request
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *urlSession = [NSURLSession sessionWithConfiguration:configuration];
    
    // Data task, and the download task
    // Create a task to make the request
    NSURLSessionDataTask *dataTask = [urlSession dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        // We are already on a background queue
        
        // Here is where I can access the HTTP data
        // Status codes, and JSON
        
        // If we don't get a 200 status code, error will not be nil
        if (error) {
            // something went wrong
            // checking the status code
            NSLog(@"Error getting data");
        } else {
            // Everything is great, let's do something with the data
            
            NSError *jsonError = nil;
            NSArray *repos = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            
            if (jsonError) { // 3
                // Handle the error
                NSLog(@"jsonError: %@", jsonError.localizedDescription);
            } else {
                // We now have our data as Objective-C data
               
                for (NSDictionary *repo in repos) {
                    NSLog(@"repo name: %@", repo[@"name"]);
                }
                
                self.objects = repos;
                
                // Tell the main queue, tell my UI Assistant
                // To update something, in this case the table view
                dispatch_async(dispatch_get_main_queue(), ^{
                    [self.tableView reloadData];
                });
            }
        }
        
    }];
    
    [dataTask resume]; // Like saying start my request
    
    NSLog(@"view did load");
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        DetailViewController *controller = (DetailViewController *)[[segue destinationViewController] topViewController];
        [controller setDetailItem:object];
        controller.navigationItem.leftBarButtonItem = self.splitViewController.displayModeButtonItem;
        controller.navigationItem.leftItemsSupplementBackButton = YES;
    }
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSDictionary *repo = self.objects[indexPath.row];
    
    cell.textLabel.text = repo[@"name"];
    return cell;
}

@end
