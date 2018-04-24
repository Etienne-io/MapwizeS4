//
//  ViewController.swift
//  MapwizeS4
//
//  Created by Etienne Mercier on 24/04/2018.
//  Copyright © 2018 Etienne Mercier. All rights reserved.
//

import UIKit
import Mapbox
import MapwizeForMapbox

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MGLMapView!
    var mapwize:MapwizePlugin?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapwize = MapwizePlugin.init(mapView, options: MWZOptions())
        mapwize?.mapboxDelegate = self
        mapwize?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : MGLMapViewDelegate {
    
    func mapViewDidFinishLoadingMap(_ mapView: MGLMapView) {
        print("Mapbox loaded")
    }
    
}

extension ViewController : MWZMapwizePluginDelegate {
    
    func mapwizePluginDidLoad(_ mapwizePlugin: MapwizePlugin!) {
        print("Mapwize loaded")
    }
    
}
