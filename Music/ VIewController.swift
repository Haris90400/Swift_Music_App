
import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundName: "note\(sender.tag)")
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")!
       
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }

            player.play()

        } catch let error as NSError {
            print(error.description)
        }
        
        
    }



}

