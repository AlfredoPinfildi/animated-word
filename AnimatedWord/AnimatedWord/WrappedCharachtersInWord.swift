//
//  WrappedCharactersInWordView.swift
//  AnimatedText
//
//  Created by alfredo pinfildi on 07/06/21.
//

import SwiftUI

struct WrappedCharactersInWordView: View {
  let word: String
  let fontSize: CGFloat
  let fontName: String
  @Binding var appear: Bool
  
  var wordArray = [String]()
  
  
  init(word: String, fontSize: CGFloat, fontName: String, appear: Binding<Bool>) {
    self.word = word
    self.fontSize = fontSize
    self.fontName = fontName
    self._appear = appear
    wordArray = word.map(String.init)
  }
  
  
  var body: some View {
    HStack(spacing: 0.0) {
      ForEach(0..<wordArray.count) { i in
        Text(wordArray[i])
          .font(.custom(fontName, size: fontSize))
          .offset(x: 0, y: appear ? 0 : fontSize)
          .fixedSize()
          .lineLimit(1)
          .clipped()
          .animation(Animation.easeInOut(duration: 0.8).delay(Double(i) * 0.04))
      }
    }
  }
}

struct WrappedCharactersInWordView_Previews: PreviewProvider {
  static var previews: some View {
    WrappedCharactersInWordView(word: "Micio", fontSize: 32, fontName: "System", appear: .constant(true))
  }
}
