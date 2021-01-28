//
//  Created by Антон Лобанов on 28.01.2021.
//

import UIKit
import ALActionController

class ViewController: UIViewController
{
	@IBAction func didTapOnFirstButton(_ sender: Any) {
		let actionController = ALActionController(
			actions: [
				.init(title: "Горячее", selected: true, icon: #imageLiteral(resourceName: "icon3")),
				.init(title: "Новое", icon: #imageLiteral(resourceName: "icon4")),
				.init(title: "Лучшее", icon: #imageLiteral(resourceName: "icon5")),
				.init(title: "Отмена", style: .cancel),
			],
			styles: .init(
				itemStyles: .init(
					contentInsets: .init(top: 16, left: 20, bottom: 16, right: 20),
					height: 54,
					cornerRadius: 10,
					backgroundColor: .init(rgb: 0x3A343C),
					tintColor: .init(rgb: 0x7F7980),
					selectedTintColor: .init(rgb: 0xB57FFF),
					cancelTintColor: .white,
					separatorColor: UIColor(rgb: 0x7F7980).withAlphaComponent(0.1),
					separatorHeight: 1,
					font: .systemFont(ofSize: 16),
					horizontalAlignment: .left,
					iconTitlePadding: 16
				),
				backgroundColor: UIColor.black.withAlphaComponent(0.8),
				contentInsets: .init(top: 0, left: 10, bottom: 0, right: 10),
				sectionInsets: .init(top: 0, left: 0, bottom: 10, right: 0)
			)
		)
		self.present(actionController, animated: false, completion: nil)
	}

	@IBAction func didTapOnSecondButton(_ sender: Any) {
		let actionController = ALActionController(
			actions: [
				.init(title: "День", selected: true, icon: #imageLiteral(resourceName: "icon2")),
				.init(title: "Неделя", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Месяц", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Год", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Все время", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Месяц", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Год", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Все время", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Месяц", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Год", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Все время", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Месяц", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Год", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Все время", icon: #imageLiteral(resourceName: "icon1")),
				.init(title: "Отмена", style: .cancel),
			],
			styles: .init(
				itemStyles: .init(
					contentInsets: .init(top: 16, left: 20, bottom: 16, right: 20),
					height: 54,
					cornerRadius: 10,
					backgroundColor: .init(rgb: 0x3A343C),
					tintColor: .init(rgb: 0x7F7980),
					selectedTintColor: .init(rgb: 0xB57FFF),
					cancelTintColor: .white,
					separatorColor: UIColor(rgb: 0x7F7980).withAlphaComponent(0.1),
					separatorHeight: 1,
					font: .systemFont(ofSize: 16),
					horizontalAlignment: .left,
					iconTitlePadding: 16
				),
				backgroundColor: UIColor.black.withAlphaComponent(0.8),
				contentInsets: .init(top: 0, left: 10, bottom: 0, right: 10),
				sectionInsets: .init(top: 0, left: 0, bottom: 10, right: 0)
			)
		)
		self.present(actionController, animated: false, completion: nil)
	}
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
	   assert(red >= 0 && red <= 255, "Invalid red component")
	   assert(green >= 0 && green <= 255, "Invalid green component")
	   assert(blue >= 0 && blue <= 255, "Invalid blue component")

	   self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
	   self.init(
		   red: (rgb >> 16) & 0xFF,
		   green: (rgb >> 8) & 0xFF,
		   blue: rgb & 0xFF
	   )
   }
}
