//
//  TimeGaugeBar.swift
//  FillTime
//
//  Created by 황석현 on 3/5/24.
//

import SwiftUI

struct TimeGaugeBar: View {
    
    @Binding var progress: Float
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .foregroundColor(Color.green.opacity(0.2))
            Circle()
            /// 주어진 값만큼 도형을 깍는 메서드, CGFloat(max(min(self.progress, 1.0),0))) 는
            /// min(self.progress, 1.0)은 변수값과 1.0 중에서 작은 값을 반환하고
            /// max(min(self.progress, 1.0),0)는 반환값과 0 중에서 큰 값을 반환한다.
            /// 즉, 값의 하한선과 상한선을 둠으로서 값의 안정성을 확보하는 코드
                .trim(from: 0.0, to: CGFloat(max(min(self.progress, 1.0),0)))
            /// 획, 선이라는 뜻을 가진 메서드로 원을 원형의 선으로 바꿔준다.
                .stroke(style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.green.opacity(0.8))
                .rotationEffect(Angle(degrees: 270.0))
        }.padding(30)
    }
}

#Preview {
    TimeGaugeBar(progress: .constant(0.4))
}
