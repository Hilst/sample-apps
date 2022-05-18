//
//  ContentView.swift
//  SwiftUISampleApp
//
//  Created by Felipe Hilst on 18/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer(minLength: 150)
            Text("THIS IS A SWIFTUI SAMPLE APP")
                .font(.headline)
                .foregroundColor(.blue)
            Spacer(minLength: 300)
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.65))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
    }
}
