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
    var delegate: AwardAction?
    let awardId: Int
    
    let goldColor = UIColor(red:0.85, green:0.71, blue:0.36, alpha:1.0)
    
    let backgroundColor = UIColor(red:0.26, green:0.22, blue:0.22, alpha:1.0)
    
    var body: some View {
        Button(action: {
            self.notifyToUpdateList()
        }) {
            Text(awardName).padding(.all, 6)
            .foregroundColor(Color(goldColor))
            .background(Color(backgroundColor))
            .cornerRadius(12)
            
        }
    }
    
    private func notifyToUpdateList() {
        delegate?.awardPressed(id: awardId)
    }
    
}

struct AwardView_Previews: PreviewProvider {
    static var previews: some View {
        AwardView(awardName: "France Football", delegate: nil, awardId: 2)
    }
}

protocol AwardAction {
    func awardPressed(id: Int)
}
