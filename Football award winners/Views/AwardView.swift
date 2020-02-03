//
//  AwardView.swift
//  Football award winners
//
//  Created by Абай Кенжехан on 1/25/20.
//  Copyright © 2020 football. All rights reserved.
//

import SwiftUI

struct AwardView: View {
    
    let awardViewModel: AwardViewModel
    
    let delegate: AwardAction?
    
    let goldColor = UIColor(red:0.85, green:0.71, blue:0.36, alpha:1.0)
    
    let backgroundColor = UIColor(red:0.26, green:0.22, blue:0.22, alpha:1.0)
    
    var body: some View {
        Button(action: {
            self.notifyToUpdateList()
        }) {
            Text(awardViewModel.awardName).padding(.all, 6)
            .foregroundColor(Color(goldColor))
                .background(awardViewModel.isSelected ? Color(backgroundColor) : Color.black)
            .cornerRadius(12)
            
        }
    }
    
    private func notifyToUpdateList() {
        delegate?.awardPressed(id: awardViewModel.id)
    }
    
}

struct AwardView_Previews: PreviewProvider {
    static var previews: some View {
        AwardView(awardViewModel: AwardViewModel(awardName: "fewjif", id: 1, isSelected: true), delegate: nil)
    }
}

protocol AwardAction {
    func awardPressed(id: Int)
}

struct AwardViewModel: Identifiable {
    let awardName: String
    let id: Int
    var isSelected: Bool
}
