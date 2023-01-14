//
//  Title.swift
//  Braille-Interpreter
//


import SwiftUI

struct Title: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Welcome to the")
                    Text("Braille Interpreter")
                        .font(.largeTitle)
                }
                .foregroundColor(.white)
                .padding()
                Image("titleImage")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                VStack(spacing: 10) {
                    NavigationLink(destination: TextToBraille(), label: {
                        HStack(alignment: .firstTextBaseline) {
                            Image(systemName: "text.quote")
                                .imageScale(.medium)
                                .symbolRenderingMode(.monochrome)
                            Text("Text to braille")
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
                    
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "hand.point.up.braille.fill")
                            .imageScale(.medium)
                            .symbolRenderingMode(.monochrome)
                        Text("Braille to text")
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
                    
                    HStack(alignment: .firstTextBaseline) {
                        Image(systemName: "ellipsis.bubble")
                            .imageScale(.medium)
                            .symbolRenderingMode(.monochrome)
                        Text("Braille to speech")
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
                }
                .padding()
                .background {
                    RoundedRectangle(cornerRadius: 4, style: .continuous)
                        .fill(Color(.systemFill))
                }
            }
            .frame(maxWidth: .infinity)
            .clipped()
            .padding(.top, 53)
            .padding(.bottom, 0)
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(.indigo)
            }
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title()
    }
}
