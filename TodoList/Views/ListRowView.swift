//
//  ListRowView.swift
//  TodoList
//
//  Created by Hadi Alshaqi on 2/15/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
     ListRowView(item: ItemModel(title: "first item", isCompleted: false))
        
}

#Preview {
     ListRowView(item: ItemModel(title: "second item", isCompleted: true))
        
}

