//
//  TodoListApp.swift
//  TodoList
//
//  Created by Hadi Alshaqi on 2/15/24.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI ::: we will stare here 
 ViewModel - manages Models for View ::: next step
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack { // if not work change to "NavigationView"
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
