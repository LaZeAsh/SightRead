//
//  InterpretedText.swift
//  Braille-Interpreter
//

import SwiftUI

struct InterpretedBraille: View {
    
    let text: String = "⠠⠇⠕⠗⠑⠍ ⠊⠏⠎⠥⠍ ⠙⠕⠇⠕⠗ ⠎⠊⠞ ⠁⠍⠑⠞⠂ ⠉⠕⠝⠎⠑⠉⠞⠑⠞⠥⠗ ⠁⠙⠊⠏⠊⠎⠉⠊⠝⠛ ⠑⠇⠊⠞⠂ ⠎⠑⠙ ⠙⠕ ⠑⠊⠥⠎⠍⠕⠙ ⠞⠑⠍⠏⠕⠗ ⠊⠝⠉⠊⠙⠊⠙⠥⠝⠞ ⠥⠞ ⠇⠁⠃⠕⠗⠑ ⠑⠞ ⠙⠕⠇⠕⠗⠑ ⠍⠁⠛⠝⠁ ⠁⠇⠊⠟⠥⠁. ⠠⠥⠞ ⠑⠝⠊⠍ ⠼⠁⠙ ⠍⠊⠝⠊⠍ ⠧⠑⠝⠊⠁⠍⠂ ⠟⠥⠊⠎ ⠝⠕⠎⠞⠗⠥⠙ ⠑⠭⠑⠗⠉⠊⠞⠁⠞⠊⠕⠝ ⠥⠇⠇⠁⠍⠉⠕ ⠇⠁⠃⠕⠗⠊⠎ ⠝⠊⠎⠊ ⠥⠞ ⠁⠇⠊⠟⠥⠊⠏ ⠑⠭ ⠼⠑⠁ ⠉⠕⠍⠍⠕⠙⠕ ⠉⠕⠝⠎⠑⠟⠥⠁⠞. ⠠⠙⠥⠊⠎ ⠁⠥⠞⠑ ⠊⠗⠥⠗⠑ ⠙⠕⠇⠕⠗ ⠊⠝ ⠗⠑⠏⠗⠑⠓⠑⠝⠙⠑⠗⠊⠞ ⠊⠝ ⠧⠕⠇⠥⠏⠞⠁⠞⠑ ⠧⠑⠇⠊⠞ ⠑⠎⠎⠑ ⠉⠊⠇⠇⠥⠍ ⠙⠕⠇⠕⠗⠑ ⠑⠥ ⠋⠥⠛⠊⠁⠞ ⠝⠥⠇⠇⠁ ⠏⠁⠗⠊⠁⠞⠥⠗. ⠠⠑⠭⠉⠑⠏⠞⠑⠥⠗ ⠎⠊⠝⠞ ⠕⠉⠉⠁⠑⠉⠁⠞ ⠉⠥⠏⠊⠙⠁⠞⠁⠞ ⠝⠕⠝ ⠏⠗⠕⠊⠙⠑⠝⠞⠂ ⠎⠥⠝⠞ ⠊⠝ ⠉⠥⠇⠏⠁ ⠟⠥⠊ ⠕⠋⠋⠊⠉⠊⠁ ⠙⠑⠎⠑⠗⠥⠝⠞ ⠍⠕⠇⠇⠊⠞ ⠁⠝⠊⠍ ⠼⠊⠙ ⠑⠎⠞ ⠇⠁⠃⠕⠗⠥⠍"
    
    var body: some View {
        VStack {
            VStack {
                Text("Your interpreted text")
                    .font(.title2.weight(.light))
            }
            .foregroundColor(.white)
            .padding()
            Spacer()
            ScrollView {
                Text(self.text)
                    .padding()
                    .background {
                        RoundedRectangle(cornerRadius: 4, style: .continuous)
                            .fill(Color(.systemFill))
                    }
                    .foregroundColor(.white)
                
 
                
            }
            VStack(spacing: 10) {
                NavigationLink(destination: Title(), label: {
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "house")
                            .imageScale(.medium)
                            .symbolRenderingMode(.monochrome)
                        Text("Return home")
                    }
                    .font(.body.weight(.medium))
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .foregroundColor(.white)
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

struct InterpretedBraille_Previews: PreviewProvider {
    static var previews: some View {
        InterpretedBraille()
    }
}
