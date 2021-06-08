//
//  ContentView.swift
//  AnimatedText
//
//  Created by alfredo pinfildi on 06/06/21.
//

import SwiftUI

struct ContentView: View {
  @State var sorrt = false
  
    var body: some View {
      VStack {
        //WrappedCharactersInWordView(word: "Cane", fontSize: 32, fontName: "System", appear: $sorrt)
        WrappedWordView(word: "ciao", fontSize: 48, fontName: "System", appear: $sorrt)
        Button(action: {
          sorrt.toggle()
        }, label: {
          Text("Button")
        })
      }
      
      VStack {
        WrappedCharactersInWordView(word: "Cane", fontSize: 32, fontName: "System", appear: $sorrt)
        
        Button(action: {
          sorrt.toggle()
        }, label: {
          Text("Button")
        })
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
