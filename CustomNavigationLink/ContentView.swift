//
//  ContentView.swift
//  CustomNavigationLink
//
//  Created by sss on 08.05.2023.
//

import SwiftUI

struct Item {
    let name: String
}

struct ContentView2: View {
    
    let item: Item
    
    var body: some View {
        Color.blue
            .navigationTitle(item.name)
    }
}

struct ContentView: View {
    
    @State var isShow = false
    let item: Item?
    
    var body: some View {
        ZStack {
            Color.green
            VStack {
                Button("Go") {
                    isShow.toggle()
                }
                
                Button("Go2") {
                    isShow.toggle()
                }
            }
            .toolbar(.hidden)
            .navigation(model: item ?? Item(name: ""), isActive: $isShow) { model in
                ContentView2(item: model)
            }
            
        }
        Text("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(item: nil)
    }
}
