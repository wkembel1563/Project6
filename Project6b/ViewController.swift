//
//  ViewController.swift
//  Project6b
//
//  Created by Will Kembel on 3/27/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create label views
        //
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "These"
        label1.backgroundColor = .blue
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "Are"
        label2.backgroundColor = .red
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "Awesome"
        label3.backgroundColor = .green
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.text = "Labels"
        label4.backgroundColor = .yellow
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        
//        // set label layout constraints
//        //
//        let viewsDictionary = [ "label1": label1, "label2": label2, "label3": label3, "label4": label4]
//        for labelKey in viewsDictionary.keys {
//            view.addConstraints(
//                NSLayoutConstraint.constraints(
//                    withVisualFormat: "H:|[\(labelKey)]|", 
//                    options: [], metrics: nil, views: viewsDictionary))
//        }
//        
//        let metrics = ["labelHeight": 88]
//        
//        view.addConstraints(
//            NSLayoutConstraint.constraints(
//                withVisualFormat: "V:|-(10)-[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-(>=10)-|",
//                options: [], metrics: metrics, views: viewsDictionary))
        var previousLabel: UILabel?
        
        for label in [label1, label2, label3, label4] {
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            if let previousLabel = previousLabel {
                label.topAnchor.constraint(equalTo: previousLabel.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
            }
            
            previousLabel = label
        }
    }


}

