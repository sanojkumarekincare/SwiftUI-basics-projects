//
//  ContentView.swift
//  Counter
//
//  Created by Sanoj on 28/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor: Color = Color.green
    @State private var myTitle: String = "My Title"
    @State private var count: Int = 0
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20){
                    Button("Increase by One"){
                        backgroundColor = .gray
                        myTitle = "Increase by One clicked"
                        count += 1
                    }
                    Button("Decrease by One"){
                        backgroundColor = .red
                        myTitle = "Decrease by One clicked"
                        if count > 0 {
                            count -= 1
                        }
                    }

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
