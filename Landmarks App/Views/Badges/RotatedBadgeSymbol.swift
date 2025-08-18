//
//  RotatedBadgeSymbol.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/18/25.
//

import SwiftUI



struct RotatedBadgeSymbol: View {

    let angle: Angle

    

    var body: some View {

        BadgeSymbol()

            .padding(-60)

            .rotationEffect(angle, anchor: .bottom)

    }

}



#Preview {

    RotatedBadgeSymbol(angle: Angle(degrees: 6.9))

}
