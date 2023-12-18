//
//  LoadingView.swift
//  weatherapp
//
//  Created by Dev on 18/12/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(
                CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity,maxHeight: .infinity)
        
    }
}

#Preview {
    LoadingView()
}
