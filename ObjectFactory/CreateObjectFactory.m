/*
 Copyright (c) 2014 Rahul Nadella
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 
 CreateObjectFactory.m
 ObjectFactory
 
 Created by Rahul Nadella on 10/14/14.
 Copyright 2014 Rahul Nadella. All rights reserved.
 */

#import "CreateObjectFactory.h"

static id OBJCInitWithArg(id  target,
                          SEL initializer,
                          id  argument)
{
    IMP imp = [target methodForSelector:initializer];
    id (*initFunc)(id, SEL, id) = (void *)imp;
    return initFunc(target, initializer, argument);
}

/*
 The default of implementation of the CreateObjectFactory interface.
 
 @version 1.0
 */
@implementation CreateObjectFactory

+ (id)create:(NSString *)className
{
    return [NSClassFromString(className) new];
}

+ (id)create:(NSString *)className
 initializer:(SEL)init
    argument:(id)arg
{
    Class class = NSClassFromString(className);
    return (class && init)
    ? OBJCInitWithArg([class alloc], init, arg)
    : nil;
}

@end
