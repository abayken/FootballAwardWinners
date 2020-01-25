//
//  AwardView.swift
//  Football award winners
//
//  Created by Абай Кенжехан on 1/25/20.
//  Copyright © 2020 football. All rights reserved.
//

import SwiftUI

struct AwardView: View {
    let awardName: String
    
    let goldColor = UIColor(red:0.85, green:0.71, blue:0.36, alpha:1.0)
    
    let backgroundColor = UIColor(red:0.26, green:0.22, blue:0.22, alpha:1.0)
    
    var body: some View {
        Button(action: {
            
        }) {
            Text(awardName)
            .foregroundColor(Color(goldColor))
            .background(Color(backgroundColor))
                .padding(.all, 8)
                .border(Color(backgroundColor), width: 3)
            .cornerRadius(12)
            
        }
    }
}

struct AwardView_Previews: PreviewProvider {
    static var previews: some View {
        AwardView(awardName: "France Football")
    }
}
