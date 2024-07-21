//
//  ContentView.swift
//  Project 2
//
//  Created by Nicolas Diaz on 7/19/24.
//

import SwiftUI

struct ContentView: View {
    @State var GoToPage2 = false

    var body: some View {
        NavigationView {
            VStack {
                Page1(GoToPage2: $GoToPage2)
                NavigationLink(destination: Page2(), isActive: $GoToPage2) {
                    EmptyView()
                }
            }
            .navigationTitle("Content View")
        }
    }
}

struct Page1: View {
    @Binding var GoToPage2: Bool
  
    var body: some View {
        VStack {
            Button("Go To Page") {
                GoToPage2 = true
                print(GoToPage2)
            }
        }
        .navigationTitle("Test Page 1")
    }
}

struct Page2: View {
    @State var showingAlert = false

    var body: some View {
        VStack {
            Button("Show Alert") {
                showingAlert = true
            }
            .alert("Important message", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
        }
        .navigationTitle("Test Page 2")
    }
}

#Preview {
    ContentView()
}
