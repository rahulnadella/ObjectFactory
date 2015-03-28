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

import Foundation

/* 
The class named ObjectFactory creates Swift class instances based on the class name.
It supports creating objects with either a parameterless initializer or an initializer 
that takes exactly one parameter. The class could easily be modified to support 
initializers with more parameters, if necessary.

There is a restriction that ObjectFactory imposes on the classes it can instantiate: 
they must derive (directly or indirectly) from NSObject. By default Swift classes 
do not derive from NSObject. There is no harm in making a Swift class derive from 
NSObject, though it might not always be possible based on a project’s specific 
class inheritance needs.

@version 1.0
*/
class ObjectFactory<TBase: NSObject>
{
    /*
    Returns a new instance of the specified class,
    which should be `TBase` or a subclass thereof.
    Uses the parameterless initializer.
    */
    class func createInstance(#className: String!) -> TBase?
    {
        return CreateObjectFactory.create(className) as TBase?
    }
    
    /*
    Returns a new instance of the specified class,
    which should be `TBase` or a subclass thereof.
    Uses the specified single-parameter initializer.
    */
    class func createInstance(
        #className:  String!,
        initializer: Selector!,
        argument:    AnyObject) -> TBase?
    {
        return CreateObjectFactory.create(
            className,
            initializer: initializer,
            argument: argument) as TBase?
    }
}