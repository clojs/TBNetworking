//
//  LoginApiManager.m
//  travelslow
//
//  Created by sangalfred on 10/4/15.
//  Copyright (c) 2015 sangalfred. All rights reserved.
//

#import "LoginApiManager.h"

@interface {{arg0}}ApiManager() <TBAPIBaseManagerParamSourceDelegate>

@end


@implementation {{arg0}}ApiManager

- (instancetype)init {
    self = [super init];
    if (self) {
        self.parameSource = self;
    }
    return self;
}

- (NSString *)requestUrl {
    return @"100010";
}

- (TBAPIRequestType)requestType {
    return TBAPIManagerRequestTypePOST;
}

- (TBLoggerType )responseLoggerType {
    return TBLoggerTypeDetail;
}

//- (NSDictionary *)jsonValidator {
//    return @{
//             @"errMsg":TBValidatorPredicate.isNotNull,
//             @"errNum":TBValidatorPredicate.isNotNull,
//             @"retData":@{
//                     @"carrier":TBValidatorPredicate.isNotNull,
//                     @"province":TBValidatorPredicate.isNotNull,
//                     @"telString":TBValidatorPredicate.isNotNull
//                     }
//             };
//}

- (NSString *)get_login_token {
    if(self.response.responseObject) {
        return [self.response.responseObject valueForKeyPath:@"token"];
    }
    return nil;
}

#pragma mark - TBAPIBaseManagerParamSourceDelegate
- (NSDictionary *)parametersForAPI:(TBAPIBaseManager *)manager {
    return @{@"tel":@"18679211201"};
}

@end
