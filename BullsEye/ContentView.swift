//
//  ContentView.swift
//  BullsEye
//
//  Created by Raj Pandya on 2020-03-22.
//  Copyright © 2020 Raj Pandya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("Welcome to my first app!")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
            Button(action: {
                print("button pressed")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                return Alert(title: Text("Hello there!"),
                             message: Text("This is my first popup."),
                             dismissButton: .default(Text("Awesome")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(
            .fixed(width: 896, height: 414))  
    }
}
