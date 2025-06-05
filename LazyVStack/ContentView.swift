//
//  ContentView.swift
//  LazyVStack
//
//  Created by Pushpendra on 03/06/25.
//

import SwiftUI

//LazyVStack And VStack

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach (0..<1000000, id: \.self) { _ in
                    ItemView()
                }
            }
        }
    }
}

struct ItemView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            // Image
            Image(systemName: "photo")
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .clipped()

            // Text Content
            VStack(alignment: .leading, spacing: 6) {
                // Title
                Text("Modern Wooden Chair")
                    .font(.headline)
                    .foregroundColor(.primary)
                    .lineLimit(2)

                // Description
                Text("Ergonomic and stylish design perfect for your workspace or living area.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)

                // Price + Info
                HStack {
                    Text("₹2,499")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.green)

                    Spacer()

                    Image(systemName: "info.circle")
                        .foregroundColor(.blue)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    ContentView()
}
