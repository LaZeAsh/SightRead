//
//  TextToBraille.swift
//  Braille-Interpreter
//

import SwiftUI

struct TextToBraille: View {
    
    @State var text: String = ""

    var body: some View {
        VStack {
            VStack {
                Text("Text to braille")
                    .font(.title2.weight(.light))
            }
            .foregroundColor(.white)
            .padding()
            Spacer()
            
            TextEditor(text: $text)
            
    
            VStack(spacing: 10) {
                NavigationLink(destination: InterpretedText(), label: {
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "arrow.forward")
                            .imageScale(.medium)
                            .symbolRenderingMode(.monochrome)
                        Text("Convert to braille")
                    }
                    .font(.body.weight(.medium))
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .foregroundColor(.green)
                    .background {
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(.clear.opacity(0.25), lineWidth: 0)
                            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.yellow.opacity(0.1)))
                    }
                })
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .clipped()
        .padding(.top, 53)
        .padding(.bottom, 0)
        .background {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(.indigo)
        }.ignoresSafeArea()
    }
}

struct TextToBraille_Previews: PreviewProvider {
    static var previews: some View {
        TextToBraille(text: "")
    }
}
