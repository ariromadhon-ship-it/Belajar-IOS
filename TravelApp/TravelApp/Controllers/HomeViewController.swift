import UIKit

class HomeViewController: UITableViewController {
    
    var destinations: [Destination] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Travel Destinations"
        destinations = DestinationDataManager.destinations
        
        tableView.register(DestinationTableViewCell.self, forCellReuseIdentifier: "DestinationCell")
        tableView.rowHeight = 120
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return destinations.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DestinationCell", for: indexPath) as! DestinationTableViewCell
        
        let destination = destinations[indexPath.row]
        cell.configure(with: destination)
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: destinations[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let detailVC = segue.destination as? DetailViewController,
               let destination = sender as? Destination {
                detailVC.destination = destination
            }
        }
    }
}
