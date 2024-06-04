<?php
class Volunteer {
    private $db;

    public function __construct(Database $db) {
        $this->db = $db;
    }

    public function add($volunteer) {
        $query = "INSERT INTO `tbl_members2` (firstName, lastName, contactNumber, nationality, sexuality_id, civilStatus_id, bdate, occupation, streetAddress, city, region, country, sun, mon, tue, wed, thu, fri, sat, morning, afternoon, evening, frequency_id, profileImage_url) 
                VALUES (:fname, :lname, :num, :nat, :sex, :cvlstat, :bdate, :occup, :strtAddress, :city, :region, :country, :sun, :mon, :tue, :wed, :thu, :fri, :sat, :morning, :afternoon, :evening, :freq, :profileImage_url)";

        $stmt = $this->db->getConnection()->prepare($query);
        $stmt->bindParam(':fname', $volunteer["fname"], PDO::PARAM_STR);
        $stmt->bindParam(':lname', $volunteer["lname"], PDO::PARAM_STR);
        $stmt->bindParam(':num', $volunteer["contactnum"], PDO::PARAM_STR);
        $stmt->bindParam(':nat', $volunteer["nationality"], PDO::PARAM_STR);
        $stmt->bindParam(':sex', $volunteer["sex"], PDO::PARAM_INT);
        $stmt->bindParam(':cvlstat', $volunteer["cvlstat"], PDO::PARAM_INT);
        $stmt->bindParam(':bdate', $volunteer["bdate"], PDO::PARAM_STR);
        $stmt->bindParam(':occup', $volunteer["occup"], PDO::PARAM_INT);
        $stmt->bindParam(':strtAddress', $volunteer["strtAddress"], PDO::PARAM_STR);
        $stmt->bindParam(':city', $volunteer["city"], PDO::PARAM_STR);
        $stmt->bindParam(':region', $volunteer["region"], PDO::PARAM_STR);
        $stmt->bindParam(':country', $volunteer["country"], PDO::PARAM_STR);
        $stmt->bindParam(':sun', $volunteer["sun"], PDO::PARAM_STR);
        $stmt->bindParam(':mon', $volunteer["mon"], PDO::PARAM_STR);
        $stmt->bindParam(':tue', $volunteer["tue"], PDO::PARAM_STR);
        $stmt->bindParam(':wed', $volunteer["wed"], PDO::PARAM_STR);
        $stmt->bindParam(':thu', $volunteer["thu"], PDO::PARAM_STR);
        $stmt->bindParam(':fri', $volunteer["fri"], PDO::PARAM_STR);
        $stmt->bindParam(':sat', $volunteer["sat"], PDO::PARAM_STR);
        $stmt->bindParam(':morning', $volunteer["morning"], PDO::PARAM_STR);
        $stmt->bindParam(':afternoon', $volunteer["afternoon"], PDO::PARAM_STR);
        $stmt->bindParam(':evening', $volunteer["evening"], PDO::PARAM_STR);
        $stmt->bindParam(':freq', $volunteer["freq"], PDO::PARAM_INT);
        $stmt->bindParam(':profileImage_url', $volunteer["profileImage_url"], PDO::PARAM_STR);
        $stmt->execute();
    }

    public function displayall() {
        $query = "SELECT * FROM `tbl_members2`";

        $stmt = $this->db->getConnection()->prepare($query);
        $stmt->execute();

        return $stmt->fetchAll(PDO::FETCH_BOTH);
    }
    public function delete($id) {
        $query = "DELETE FROM tbl_members2
            WHERE volunteer_id = $id";

        $this->db->getConnection()->exec($query);
    }
    public function update($id, $volunteer) {
        $query = "UPDATE tbl_members2 
                SET firstName = :fname,
                    lastName = :lname, 
                    contactNumber = :num, 
                    nationality = :nat, 
                    sexuality_id = :sex, 
                    civilStatus_id = :cvlstat, 
                    bdate = :bdate, 
                    occupation = :occup, 
                    streetAddress = :strtAddress, 
                    city = :city, 
                    region = :region, 
                    country = :country, 
                    sun = :sun, 
                    mon = :mon, 
                    tue = :tue, 
                    wed = :wed, 
                    thu = :thu, 
                    fri = :fri, 
                    sat = :sat, 
                    morning = :morning, 
                    afternoon = :afternoon, 
                    evening = :evening, 
                    frequency_id = :freq,
                    profileImage_url = :profileImage_url 
                WHERE volunteer_id = :id";
        $stmt = $this->db->getConnection()->prepare($query);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->bindParam(':fname', $volunteer["fname"], PDO::PARAM_STR);
        $stmt->bindParam(':lname', $volunteer["lname"], PDO::PARAM_STR);
        $stmt->bindParam(':num', $volunteer["contactnum"], PDO::PARAM_STR);
        $stmt->bindParam(':nat', $volunteer["nationality"], PDO::PARAM_STR);
        $stmt->bindParam(':sex', $volunteer["sex"], PDO::PARAM_INT);
        $stmt->bindParam(':cvlstat', $volunteer["cvlstat"], PDO::PARAM_INT);
        $stmt->bindParam(':bdate', $volunteer["bdate"], PDO::PARAM_STR);
        $stmt->bindParam(':occup', $volunteer["occup"], PDO::PARAM_INT);
        $stmt->bindParam(':strtAddress', $volunteer["strtAddress"], PDO::PARAM_STR);
        $stmt->bindParam(':city', $volunteer["city"], PDO::PARAM_STR);
        $stmt->bindParam(':region', $volunteer["region"], PDO::PARAM_STR);
        $stmt->bindParam(':country', $volunteer["country"], PDO::PARAM_STR);
        $stmt->bindParam(':sun', $volunteer["sun"], PDO::PARAM_STR);
        $stmt->bindParam(':mon', $volunteer["mon"], PDO::PARAM_STR);
        $stmt->bindParam(':tue', $volunteer["tue"], PDO::PARAM_STR);
        $stmt->bindParam(':wed', $volunteer["wed"], PDO::PARAM_STR);
        $stmt->bindParam(':thu', $volunteer["thu"], PDO::PARAM_STR);
        $stmt->bindParam(':fri', $volunteer["fri"], PDO::PARAM_STR);
        $stmt->bindParam(':sat', $volunteer["sat"], PDO::PARAM_STR);
        $stmt->bindParam(':morning', $volunteer["morning"], PDO::PARAM_STR);
        $stmt->bindParam(':afternoon', $volunteer["afternoon"], PDO::PARAM_STR);
        $stmt->bindParam(':evening', $volunteer["evening"], PDO::PARAM_STR);
        $stmt->bindParam(':freq', $volunteer["freq"], PDO::PARAM_INT);
        $stmt->bindParam(':profileImage_url', $volunteer["profileImage_url"], PDO::PARAM_STR);
        $stmt->execute();
    }
    public function view($id) {
        $query = "SELECT * 
                FROM `tbl_members2`
                WHERE volunteer_id = :id
                LIMIT 1";

        $stmt = $this->db->getConnection()->prepare($query);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();

        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
?>