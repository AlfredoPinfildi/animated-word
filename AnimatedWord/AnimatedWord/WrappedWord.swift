//
//  WrappedWordView.swift
//  AnimatedText
//
//  Created by alfredo pinfildi on 06/06/21.
//

import SwiftUI

struct WrappedWordView: View {
  let word: String
  let fontSize: CGFloat
  let fontName: String
  
  @Binding var appear: Bool
  
  var body: some View {
    Text(word)
      .font(.custom(fontName, size: fontSize))
      .offset(x: 0, y: appear ? 0 : fontSize)
      .fixedSize()
      .lineLimit(1)
      .clipped()
      .animation(.easeInOut(duration: 0.8))
  }
}

struct WrappedWordView_Previews: PreviewProvider {
  static var previews: some View {
    WrappedWordView(word: "micio", fontSize: 32, fontName: "System", appear: .constant(true))
  }
}
