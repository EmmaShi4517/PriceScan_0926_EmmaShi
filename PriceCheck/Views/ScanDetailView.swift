//
//  ScanDetailView.swift
//  PriceCheck
//
//  Created by Emma Shi on 9/26/24.
//

import SwiftUI
import Foundation

struct ScanDetailView: View {
	var scan: PriceScan
	var body: some View {
		VStack{
			Text(scan.item)
				.font(.title)
				.fontWeight(.bold)
				.padding(.bottom)
			Text("As of: \(Helper.getShortDate(scan.date))")
				.fontWeight(.bold)
				.foregroundColor(Color.gray)
				.padding(.bottom)
			Text("Price: \(Helper.asCurrency(scan.price))")
				.font(.largeTitle)
				.padding(.top)
			Spacer()
		}.padding()
	}
}
