# renovation-projects-tracker

XCode: 13.3
SwiftUI: 3.0
Swift: 5.6

## Renovation Projects Tracker is based on a tutorial from Andrew Bancroft.  

The basic premise is to...track projects, duh.  However this is a great learning app because it involves different aspects of SwiftUI I was able to figure out.  Andrews tutorial used JSON as the data to import, so it deals with using file managing and looking for a file to decode data and encode it to a model.  However it didn't allow for dynamically adding projects, just updating the JSON file.  

The first thing I wanted to change was move from JSON data to Core Data.  This allowed me to use a database, which just used SQLite underneath the hood.  I also added a View to add a project and multiple 'punch list' items to the project.  I also modified the Editing View to allow for Inspection Log Entries and modifying the punch list items and adding more as well.

# What I learned from this:
Core Data
How Core Data handles multiple Entities (tables)
Adding relationships between Entities
Data Models
Animation
Transitions
Search functionality with Core Data
Creating a custom shape

# What needs to be done:
Splitting Core Data tasks into ViewModel
Modify the Edit and Add Views with Sections
- Also add some color to the Views
Newer animations
Change the snowflake (from the tutorial) to another object
