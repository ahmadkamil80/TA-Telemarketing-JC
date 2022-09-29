Feature: Approved Phone Project

  Scenario: Valid input Phone Number tidak melebihi 12 digit angka
    Given User sedang berada dihalaman Web "https://sqa.peluangkerjaku.com/tele/"
    When User klik informasi 
    And User klik Task
    And User klik New
    
    And User memilih category business "HANDPHONES_AND_CELLULAR"
    And User klik "ADD PHONE"
    And User memasukan Request Number "085612345678"
    And User klik save
    And User klik OK
    And User klik close
    And User memilih halaman User Management
    And User klik Phone Approve
    And User klik panah button page
    And User klik ceklis 
    And User klik Approve 
    And User klik Yes
    And User klik done
    And User ke halaman Task
    And User mengklik New 
    And User memilih di category business "HANDPHONES_AND_CELLULAR"
    Then User dapat memilih nomor "085612345678"
    
  Scenario: Invalid input Phone Number melebihi 12 digit angka
  	Given User sedang berada dihalaman Web "https://sqa.peluangkerjaku.com/tele/"
  	When User klik informasi 
    And User klik Task
    And User klik New
    And User memilih category business "HANDPHONES_AND_CELLULAR"
    And User klik "ADD PHONE"
    And User memasukan Request Number "0812345678901234"
    And User klik save
    Then Nomor tidak bisa di save "0812345678901234"
   
   
   
   