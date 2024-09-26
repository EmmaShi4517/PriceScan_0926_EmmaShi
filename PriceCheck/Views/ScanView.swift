//
//  ScanView.swift
//  PriceCheck
//
//  Created by Emma Shi on 9/26/24.
//

import SwiftUI
import Foundation

struct ScanView: View {
	var scan: PriceScan
	var body: some View {
		NavigationLink(destination: ScanDetailView(scan: scan), label: {
			HStack {
				Text(scan.item)
				Spacer()
				Text(Helper.asCurrency(scan.price))
					.fontWeight(.bold)
			}
		})
	}
}
