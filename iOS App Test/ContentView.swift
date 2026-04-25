//
//  ContentView.swift
//  iOS APP
//
//  Created by Muhammad Rasyid Ridho on 24/04/26.
//

import SwiftUI

struct ContentView: View {

    var activity = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    @State private var id = 1
    @State private var selected = "Baseball"
    
    var body: some View {
        VStack {
            Text("Why Not Try...")
                .font(Font.largeTitle.bold())
            
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundStyle(.white)
                )
            Text("\(selected)")
                .font(.title)
        }
        .transition(.slide)
        .id(id)
        .padding(60)
        
        Button("Try Again"){
            withAnimation(.easeInOut(duration: 1) ){
                selected = activity.randomElement() ?? "Archery"
                id += 1
            }
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
}
