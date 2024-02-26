//
//  ViewController.swift
//  mySamplesUIKit
//
//  Created by Рустем on 25.02.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }

    private var bigButton: BigButton = {
        let bigButton = BigButton()
        bigButton.layer.backgroundColor = CGColor(red: 0, green: 0, blue: 1, alpha: 1)
        bigButton.inset = -100
        return bigButton
    }()

    @objc func pressed() {
        print("it's working!")
    }
}

private extension ViewController {
    func initialize() {
        view.backgroundColor = .green
        view.addSubview(bigButton)

        bigButton.addTarget(self, action: #selector(pressed), for: .touchUpInside)

        bigButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalTo(100)
        }
    }
}
