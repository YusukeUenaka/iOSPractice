import UIKit

class AddressListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - @IBOutlet
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Properties
    let name = ["佐藤","鈴木","高橋","田中","伊藤","渡辺"]
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // NavigationBarのタイトルを設定
        self.navigationItem.title = "連絡先一覧"
        //自作セルをテーブルビューに登録する。
        let addressCell = UINib(nibName: "AddressListViewCell", bundle: nil)
        tableView.register(addressCell, forCellReuseIdentifier: "AddressCell")
    }
    
    override func loadView() {
        if let loadView = UINib(nibName: "AddressListViewController", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView {
            view = loadView
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    // テーブル行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 通常は引数のセクションで分岐して値を返却する
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを取得する。
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddressCell", for: indexPath) as! AddressListViewCell
        cell.name?.text = name[indexPath.row]
        return cell
    }
    
    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        // セル番号を遷移画面先に渡す
        let vc = AddressDetailController(sq: indexPath.row)
        navigationController?.pushViewController(vc, animated: true)
        
    }
}


