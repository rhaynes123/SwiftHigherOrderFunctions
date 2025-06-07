//
//  ContentView.swift
//  HelpMe
//
//  Created by richard Haynes on 6/7/25.
//

import SwiftUI
var issues: [Issue] = [
    Issue(title: "Printer Jammed", description: "I tried to reload the printer but now there is a jam", createdBy: "Thomas Wang", assignedTo: nil),
    Issue(title: "Low Battery", description: "My phone is running low on battery.Even after I charge it it still doesn't charge", createdBy: "John Damon", assignedTo: "Tim Duncan"),
    Issue(title: "No Internet", description: "I am unable to connect to the internet on my new phone", createdBy: "John Damon", assignedTo: nil),
]
struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Help Me Issue Tracker!")
                .font(.headline)
            
            Text("Un-Assigned Issues:")
                .font(.subheadline)
                .padding(5)
            IssuesView(issues: issues.filter{ $0.assignedTo == nil})
            Text("Assigned Issues:")
                .font(.subheadline)
                .padding(5)
            IssuesView(issues: issues.filter{ $0.assignedTo != nil})
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct IssuesView: View {
    @State var issues: [Issue]
    init(issues: [Issue]) {
        self.issues = issues
    }
    var body: some View {
        HStack {
            Text("Title")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Description")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Created By")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Assigned To")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.bottom, 4)

        Divider()

        List(issues) { issue in
            HStack {
                Text(issue.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(issue.description)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(issue.createdBy)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(issue.assignedTo ?? "")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}
