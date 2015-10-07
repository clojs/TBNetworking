//
//  LoginApiManager.h
//  travelslow
//
//  Created by sangalfred on 10/4/15.
//  Copyright (c) 2015 sangalfred. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIBaseManager.h"

@interface {{arg0}}ApiManager : APIBaseManager <TBAPIManager>

/**
 * 登陆接口
 */
- (NSString *)get_login_token;

@end
