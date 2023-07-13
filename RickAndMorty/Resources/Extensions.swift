//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 7/7/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
