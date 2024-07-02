//
//  PersonalContactSocButtonListView.swift
//  WBApp
//
//  Created by Ильяс Жанаев on 30.06.2024.
//

import SwiftUI

struct PersonalContactSocButtonListView: View {
    
    let socialMediaImages = ["SocialMedia1", "SocialMedia2", "SocialMedia3", "SocialMedia4"]
    
    var body: some View {
        HStack {
            ForEach(socialMediaImages.indices, id: \.self) { index in
                Image(socialMediaImages[index])
            }
            .background(Color.backgroundWB)
        }
    }
}

#Preview {
    PersonalContactSocButtonListView()
}
