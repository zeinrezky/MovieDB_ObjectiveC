//
//  ViewController.h
//  MovieDb_OBJC
//
//  Created by zein rezky chandra on 10/07/24.
//

#import <UIKit/UIKit.h>
#import "MovieViewModel.h"

@interface ViewController : UIViewController <UISearchBarDelegate>

@property (nonatomic, strong) UISearchBar *searchBar;
@property (nonatomic, strong) MoviesViewModel *viewModel;

@end
