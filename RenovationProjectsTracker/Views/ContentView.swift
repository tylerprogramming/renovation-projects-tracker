//
//  ContentView.swift
//  RenovationProjectsTracker
//
//  Created by Tyler Reed on 4/5/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var dbContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\RenovationProject.dueDate, order: .forward)], predicate: nil, animation: .default)
    private var listOfProjects: FetchedResults<RenovationProject>
    
    var body: some View {
        NavigationView {
            List {
                ForEach(listOfProjects) { project in
                    NavigationLink(destination: DetailView(project: project), label: {
                        RenovationProjectRow(project: project)
                            .id(UUID())
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
