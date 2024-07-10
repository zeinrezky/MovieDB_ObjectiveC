//
//  MovieModel.h
//  MovieDb_OBJC
//
//  Created by zein rezky chandra on 10/07/24.
//

#import <Foundation/Foundation.h>

@interface MovieModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *overview;
@property (nonatomic, strong) NSString *posterPath;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
