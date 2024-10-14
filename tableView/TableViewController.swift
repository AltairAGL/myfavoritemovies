//
//  TableViewController.swift
//  tableView
//
//  Created by Altair on 12.10.2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var arrayMovies = [
        Movie(name: "Форест Гамп", image: "forestgump", descriptionOfMovie: "СЮЖЕТ ФИЛЬМА «ФОРРЕСТ ГАМП»: Форрест Гамп — мальчик с отставанием в развитии. Сверстники все детство и юность издевались над ним, но мама нежно его любит, и Форрест вырастает счастливым и способным сопереживать. Всю жизнь Форрест влюблен в подругу детства Дженни, но она согласна лишь дружить. Несмотря на физические недостатки, молодой человек становится звездой школьной футбольной команды, героем войны и очень богатым человеком. Но Форрест все такой же добрый и открытый парень, готовый пожертвовать собой ради счастья любимой."),
        Movie(name: "Побег из Шоушенка", image: "shoushank", descriptionOfMovie: "СЮЖЕТ ФИЛЬМА «ПОБЕГ ИЗ ШОУШЕНКА»: Молодой преуспевающий банкир Энди попадает на скамью подсудимых по обвинению в убийстве собственной жены и ее любовника. Энди невиновен, но судьи распоряжаются иначе, и молодому человеку предстоит пожизненное заключение в Шоушенке — самой страшной тюрьме Америки. Из этого места выход один — на кладбище. Но Энди уверен, что если есть мечта, пусть даже неосуществимая, то нужно двигаться к ней во что бы то ни стало."),
        Movie(name: "Назад в будущее", image: "backToFuture", descriptionOfMovie: "СЮЖЕТ ФИЛЬМА НАЗАД В БУДУЩЕЕ: Марти Макфлай — обычный подросток, живущий в 1985 году. Однажды его друг, ученый гений Эммет Браун по прозвищу Док предлагает показать Марти нечто удивительное и отправляет подростка на 30 лет назад. Парень встречает в прошлом своих молодых родителей, испытывает интерес со стороны своей молодой матери и пытается разыскать Дока, чтобы вернуться назад в будущее. Но чтобы не исчезнуть с лица земли, Марти должен познакомить и влюбить своих родителей друг в друга. Назад в будущее — легендарная фантастическая комедия Роберта Земекиса с Майклом Дж. Фоксом и Кристофером Ллойдом. У фильма есть два продолжения."),
        Movie(name: "Гладиатор", image: "Gladiator", descriptionOfMovie: "СЮЖЕТ ФИЛЬМА «ГЛАДИАТОР»: Великий император Марк Аврелий после очередной громкой победы решает передать власть, но не сыну Коммоду, как думали многие, а лучшему полководцу римских легионов Максимусу. Коммод убивает своего отца и истребляет всю семью Максимуса, чтобы не упустить Рим из своих рук. Чудом уцелевший Максимус попадает на рынок рабов, где его покупает Проксимо и делает из генерала гладиатора. День за днем Максимус побеждает в поединках и становится все ближе к Колизею, где он сразится со своим главным врагом."),
        Movie(name: "Зеленая миля", image: "Greenmilefilm", descriptionOfMovie: "СЮЖЕТ ФИЛЬМА «ЗЕЛЕНАЯ МИЛЯ»: Двухметровый необразованный Джон Коффи (Майкл Кларк Дункан) обвиняется в страшном преступлении — изнасиловании и убийстве двух маленьких девочек — и приговорен к смерти на электрическом стуле. Его сажают в камеру смертников в блоке Зеленая миля, которым руководит Пол (Том Хэнкс). В ожидании смерти Джон излечивает Пола от тяжелой болезни и вообще творит чудеса. Угрюмые надсмотрщики постепенно проникаются симпатией к неуклюжему верзиле, но час смертной казни все ближе, и сделать уже ничего нельзя.")
    ]

    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayMovies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        
        let label = cell.viewWithTag(1001) as! UILabel
        label.text = arrayMovies[indexPath.row].name
        
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = UIImage(named: arrayMovies[indexPath.row].image)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 122
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.movie = arrayMovies[indexPath.row]
        
        navigationController?.show(vc, sender: self)
        
        
        
    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
