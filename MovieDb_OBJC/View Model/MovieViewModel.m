//
//  MovieViewModel.m
//  MovieDb_OBJC
//
//  Created by zein rezky chandra on 10/07/24.
//

#import "MovieViewModel.h"
#import "NetworkManager.h"
#import "MovieModel.h"

@implementation MoviesViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _movies = [NSArray array];
        _searchQuery = @"Marvel";
        _currentPage = 1;
    }
    return self;
}

- (void)fetchMovies {
    [[NetworkManager sharedManager] fetchMoviesWithPage:self.currentPage query:self.searchQuery completion:^(NSArray *movies, NSError *error) {
        if (!error) {
            NSMutableArray *movieObjects = [NSMutableArray array];
            for (NSDictionary *movieDict in movies) {
                MovieModel *movie = [[MovieModel alloc] initWithDictionary:movieDict];
                [movieObjects addObject:movie];
            }
            self.movies = movieObjects;
            if (self.updateHandler) {
                self.updateHandler();
            }
        }
    }];
}

@end
