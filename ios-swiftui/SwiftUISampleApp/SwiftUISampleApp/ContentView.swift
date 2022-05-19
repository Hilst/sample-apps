//
//  ContentView.swift
//  SwiftUISampleApp
//
//  Created by Felipe Hilst on 18/05/22.
//

import SwiftUI

struct ContentView: View {
    var viewModel = ListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.getListItems(), id: \.id) { item in
                Text(item.name)
            }
            .navigationTitle("List Screen")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
    }
}
