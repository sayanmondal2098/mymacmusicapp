
import UIKit
import MediaPlayer

class GenareButtonScreen: UIViewController {
    
    var musicplayer = MPMusicPlayerController.applicationMusicPlayer
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func GenareButtonTap(_ sender: UIButton) {
        playgenare(genere: sender.currentTitle!)
    }
    
    func playgenare(genere:String) {
        musicplayer.stop()
        
        let query = MPMediaQuery()
        let popertiespredicate = MPMediaPropertyPredicate(value: genere, forProperty: MPMediaItemPropertyGenre)
        query.addFilterPredicate(popertiespredicate)
        
        musicplayer.setQueue(with: query)
        musicplayer.shuffleMode = .songs
        musicplayer.play()
        
    }
}
