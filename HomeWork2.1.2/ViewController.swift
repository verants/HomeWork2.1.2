//
//  ViewController.swift
//  HomeWork2.1.2
//
//  Created by Антон Вербицкий on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var colorLabels: UIStackView!

	@IBOutlet weak var redLabel: UILabel!
	@IBOutlet weak var yellowLabel: UILabel!
	@IBOutlet weak var greenLabel: UILabel!


	@IBOutlet weak var switchColorButton: UIButton!

	var count = 0

	@IBAction func nextColorChange(_ sender: UIButton) {

		let colors = [redLabel, yellowLabel, greenLabel]

		switchColorButton.setTitle("NEXT", for: .normal)

		redLabel.alpha = 0.3
		yellowLabel.alpha = 0.3
		greenLabel.alpha = 0.3

		colors[count % 3]?.alpha = 1
		count +=  1

		}


	override func viewDidLoad() {
		super.viewDidLoad()

		redLabel.layer.masksToBounds = true
		yellowLabel.layer.masksToBounds = true
		greenLabel.layer.masksToBounds = true

		redLabel.layer.cornerRadius = 70
		yellowLabel.layer.cornerRadius = 70
		greenLabel.layer.cornerRadius = 70

		switchColorButton.layer.cornerRadius = 10

	}

}







