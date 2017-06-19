//
//  ViewController.swift
//  LearnFirebase
//
//  Created by Amit Inbar on 19/06/2017.
//  Copyright © 2017 Amit Inbar. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    var handle: AuthStateDidChangeListenerHandle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        handle = Auth.auth().addStateDidChangeListener({ (auth, user) in
            // ...
            if user != nil {
                print("Signed in")
            } else if user == nil {
                print("Not signed in")
            } else {
                print("there is an error")
            }
        })
    }

    override func viewWillDisappear(_ animated: Bool) {
        Auth.auth().removeStateDidChangeListener(handle!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

