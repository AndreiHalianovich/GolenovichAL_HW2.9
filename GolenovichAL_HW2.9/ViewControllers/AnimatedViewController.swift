//
//  ViewController.swift
//  GolenovichAL_HW2.9
//
//  Created by Andrei Halianovich on 25.02.21.
//

import Spring

class AnimatedViewController: UIViewController {
    
    @IBOutlet var textView: SpringTextView!
    @IBOutlet var runButton: SpringButton!
    
    private var animation = Animation.getAnimations()
    
    @IBAction func animateButtonDidClick(_ sender: SpringButton) {
        textView.text = """
                           Preset \(animation.preset)
                           Curve: \(animation.curve)
                           Force: \(String(format: "%.02f", animation.force))
                           Duration: \(String(format: "%.02f", animation.duration))
                           Delay: \(String(format: "%.02f", animation.delay))
                        """
        textView.animation = animation.preset
        textView.curve = animation.curve
        textView.force = animation.force
        textView.duration = animation.duration
        textView.delay = animation.delay
        textView.animate()
        
        animation = Animation.getAnimations()
        runButton.setTitle("Run \(animation.preset)", for: .normal)
    }
    
}

