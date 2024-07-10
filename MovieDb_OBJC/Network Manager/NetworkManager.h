//
//  NetworkManager.h
//  MovieDb_OBJC
//
//  Created by zein rezky chandra on 10/07/24.
//

#import <Foundation/Foundation.h>

@interface NetworkManager : NSObject

+ (instancetype)sharedManager;
- (void)fetchMoviesWithPage:(NSInteger)page query:(NSString *)query completion:(void (^)(NSArray *movies, NSError *error))completion;

@end
