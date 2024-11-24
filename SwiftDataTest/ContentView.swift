//
//  ContentView.swift
//  SwiftDataTest
//
//  Created by Antony Holshouser on 11/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    
    @Query private var items: [DataItem]
    var body: some View {
        
        VStack {
            Button {
                let data = DataItem()
                context.insert(data)
            } label: {
                Text("Add Item")
            }
            
            ForEach(items, id: \.self) { item in
                Text(item.id)
                    .onTapGesture {
                        context.delete(item)
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
