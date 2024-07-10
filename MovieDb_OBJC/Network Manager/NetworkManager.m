//
//  NetworkManager.m
//  MovieDb_OBJC
//
//  Created by zein rezky chandra on 10/07/24.
//

#import "NetworkManager.h"

@implementation NetworkManager

+ (instancetype)sharedManager {
    static NetworkManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    return sharedManager;
}

- (void)fetchMoviesWithPage:(NSInteger)page query:(NSString *)query completion:(void (^)(NSArray *movies, NSError *error))completion {
    NSString *apiKey = @"a310f7b62fbf8de5beafbb10afb1343e";
    NSString *urlString = [NSString stringWithFormat:@"https://api.themoviedb.org/3/search/movie?api_key=%@&query=%@&page=%ld", apiKey, query, (long)page];
    NSURL *url = [NSURL URLWithString:urlString];
    
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            completion(nil, error);
            return;
        }
        
        NSError *jsonError;
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        
        if (jsonError) {
            completion(nil, jsonError);
            return;
        }
        
        NSArray *results = json[@"results"];
        completion(results, nil);
        
    }] resume];
}

@end
