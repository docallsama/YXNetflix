//
//  CustomTabSwitcher.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/25.
//

import SwiftUI

enum CustomTab: String {
    case episode = "EPISODEDS"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher: View {
    var tabs: [CustomTab]
    @State private var currentTab = CustomTab.episode
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id:\.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: self.widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                                
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .bold()
                                    .font(.system(size: 16))
                                    .foregroundStyle(tab == currentTab ? .white : .gray)
                            }
                            .buttonStyle(.plain)
                            .frame(height: 30)
                        }
                    }
                }
            }
        }
    }
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight:.bold))
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episode, .trailers, .more])
        }
    }
}
