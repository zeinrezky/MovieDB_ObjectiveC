//
//  MovieViewModel.h
//  MovieDb_OBJC
//
//  Created by zein rezky chandra on 10/07/24.
//

#import <Foundation/Foundation.h>

@interface MoviesViewModel : NSObject

@property (nonatomic, strong) NSArray *movies;
@property (nonatomic, strong) NSString *searchQuery;
@property (nonatomic, assign) NSInteger currentPage;
@property (nonatomic, copy) void (^updateHandler)(void);

- (void)fetchMovies;

@end
