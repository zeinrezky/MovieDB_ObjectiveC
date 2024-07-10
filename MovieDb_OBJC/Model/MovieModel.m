//
//  MovieModel.m
//  MovieDb_OBJC
//
//  Created by zein rezky chandra on 10/07/24.
//

#import "MovieModel.h"

@implementation MovieModel

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _title = dictionary[@"title"];
        _overview = dictionary[@"overview"];
        _posterPath = dictionary[@"poster_path"];
    }
    return self;
}

@end
