ObjectFactory
=============

Overview
---------

This project is an example implementation of creating objects in Swift using a bridging header file.  This project should be run from the command line.

Usage
--------
The example shown below can be found in main.swift.

        let namespace = "ObjectFactory"

        typealias PersonFactory = ObjectFactory<Person>

        func createPersonWithClassName(
            className: String!,
            personName: String? = nil)
        {
            let qualifiedName = "\(namespace).\(className)"
            if personName != nil
            {
                if let person = PersonFactory.createInstance(
                    className: qualifiedName,
                    initializer: "initWithName",
                    argument: personName!)
                {
                    println("\(className) name = \(person.name)");
                }
            }
            else
            {
                if let person = PersonFactory.createInstance(className: qualifiedName)
                {
                    println("Created a \(className)");
                }
            }
        }
        
        createPersonWithClassName("Stranger")
        createPersonWithClassName("Friend", personName: "Steve")

License
--------

*MIT License* --> A short, permissive software license. Basically, you can do whatever you want as long as you include the original copyright and license notice in any copy of the software/source.  There are many variations of this license in use.
