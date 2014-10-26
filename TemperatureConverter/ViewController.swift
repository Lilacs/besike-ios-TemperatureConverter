//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by 张鹏 on 14/10/26.
//  Copyright (c) 2014年 gotoitem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func temperatureSliderChanged(sender: UISlider) {
        self.updateTemperatureDisplays()
    }
    
    func updateTemperatureDisplays() {
        var currentValue = temperatureSlider.value
        celsiusLabel.text = String(format: "%.1f", arguments: [currentValue]) + "C"
        var F =  currentValue * (9 / 5) + 32
        fahrenheitLabel.text = String(format: "%.1f", arguments: [F]) + "F"
        var K = currentValue + 273.15
        kelvinLabel.text = String(format: "%.1f", arguments: [K]) + "K"
        
    }

}

