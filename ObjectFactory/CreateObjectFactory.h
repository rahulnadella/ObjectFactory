/*
 The MIT License (MIT)
 
 Copyright (c) 2014 Rahul Nadella http://github.com/rahulnadella
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

/*
 Be sure to import this file in your project's bridging header file.
 #import "CreateObjectFactory.h"
 */

@import Foundation;

/* 
 The CreateObjectFactory interface instantiates NSObject subclasses. 
 
 @version 1.0
 */
@interface CreateObjectFactory : NSObject

/*
 Instantiates the specified class, which must
 descend (dircectly or indirectly) from NSObject.
 Uses the class's parameterless initializer.
 */
+ (id)create:(NSString *)className;

/*
 Instantiates the specified class, which must
 descend (dircectly or indirectly) from NSObject.
 Uses the specified initializer, passing it the
 argument provided via the `argument` parameter.
 */
+ (id)create:(NSString *)className
 initializer:(SEL)initializer
    argument:(id)argument;

@end
