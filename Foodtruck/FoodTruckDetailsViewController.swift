import UIKit
import AlamofireImage

class FoodtruckDetailsViewController: UIViewController {

    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var foodtruck: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = foodtruck["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = foodtruck["overview"] as? String
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = foodtruck["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af.setImage(withURL: posterUrl!)
        
        let backdropPath = foodtruck["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropView.af.setImage(withURL: backdropUrl!)
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
