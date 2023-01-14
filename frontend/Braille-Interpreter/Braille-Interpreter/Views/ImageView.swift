//
//  ImageView.swift
//  Braille-Interpreter
//

import SwiftUI

struct ImageView: View {
    
    let text: Bool
    // tracks if either text or speech
    
    var body: some View {
        VStack {
            VStack {
                Text("Your image")
                    .font(.title2.weight(.light))
            }
            .foregroundColor(.white)
            .padding()
            Image("braille")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .clipped()
            Spacer()
            VStack(spacing: 10) {
                
                NavigationLink(destination: InterpretedText(isText: true), label: {
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "arrow.forward")
                            .imageScale(.medium)
                            .symbolRenderingMode(.monochrome)
                        
                        text ? Text("Convert to text") : Text("Convert to speech")
            
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

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(text: false)
    }
}
