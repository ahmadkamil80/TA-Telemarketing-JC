Feature: Task
	
	Scenario: User verivikasi data new ke data agree
		Given user berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user input username "agent01"
		And user input password "1"
		And user klik sign in
		And user klik ok
		And user klik task
		And user klik new
		And user mencari nama perusahaan di pencarian new "Toko lula"
		And user klik perusahaan yang sudah dicari
		And user input status activity channel "Call"
		And user input status activity status "Tersambung"
		And user input status activity status call "Diangkat" 
		And user input status activity status result "Setuju"
		And user input status activity reason "Berhasil Download" 
		And user klik submit
		And user klik yes
		Then data perusahaan "Toko lula" masuk ke task agree
		
		Scenario: User verivikasi data new ke data all
		Given user berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user input username "agent01"
		And user input password "1"
		And user klik sign in
		And user klik ok
		And user klik task
		And user klik new
		And user mencari nama perusahaan di pencarian new "Toko lula"
		And user klik perusahaan yang sudah dicari
		And user input status activity channel "Call"
		And user input status activity status "Tidak Tersambung"
		And user input status activity status call "Nomer Salah" 
		And user input status activity status result "Nomer Salah"
		And user input status activity reason "Nomer Salah" 
		And user klik submit
		And user klik yes
		Then data perusahaan "Toko lula" masuk ke task data all dengan status result "Nomer Salah"
		
		Scenario: User verivikasi data new ke follow up
		Given user berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user input username "agent01"
		And user input password "1"
		And user klik sign in
		And user klik ok
		And user klik task
		And user klik new
		And user mencari nama perusahaan di pencarian new "Toko lula"
		And user klik perusahaan yang sudah dicari
		And user input status activity channel "Call"
		And user input status activity status "Tersambung"
		And user input status activity status call "Diangkat" 
		And user input status activity status result "Follow Up"
		And user input status activity reason "Follow Up" 
		And user klik submit
		And user klik yes
		Then data perusahaan "Toko lula" masuk ke task follow up
		
		Scenario: User verivikasi data agree ke final dengan valid link
		Given user berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user input username "agent01"
		And user input password "1"
		And user klik sign in
		And user klik ok
		And user klik task
		And user klik agree
		And user mencari nama perusahaan di pencarian agree "dewatashopbali"
		And user klik perusahaan yang sudah dicari
		And user input status activity link "https://www.linktoko.com"
		And user klik update
		And user klik ok
		Then data agree berhasil diupdate
		
		Scenario: User verivikasi data agree ke final dengan random value link
		Given user berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user input username "agent01"
		And user input password "1"
		And user klik sign in
		And user klik ok
		And user klik task
		And user klik agree
		And user mencari nama perusahaan di pencarian agree "dewatashopbali"
		And user klik perusahaan yang sudah dicari
		And user input status activity link "5125123"
		And user klik update
		And user klik ok
		Then data agree gagal update ke final
		
		Scenario: User verivikasi data follow up ke data agree
		Given user berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user input username "agent01"
		And user input password "1"
		And user klik sign in
		And user klik ok
		And user klik task
		And user klik follow up
		And user mencari nama perusahaan di pencarian follow up "Toko lula"
		And user klik perusahaan yang sudah dicari
		And user input status activity channel "Call"
		And user input status activity status "Tersambung"
		And user input status activity status call "Diangkat" 
		And user input status activity status result "Setuju"
		And user input status activity reason "Berhasil Download" 
		And user klik submit
		And user klik yes
		Then data perusahaan "Toko lula" masuk ke task agree
		
		Scenario: User verivikasi data follow up ke data all
		Given user berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user input username "agent01"
		And user input password "1"
		And user klik sign in
		And user klik ok
		And user klik task
		And user klik follow up
		And user mencari nama perusahaan di pencarian follow up "Toko lula"
		And user klik perusahaan yang sudah dicari
		And user input status activity channel "Call"
		And user input status activity status "Tidak Tersambung"
		And user input status activity status call "Nomer Salah" 
		And user input status activity status result "Nomer Salah"
		And user input status activity reason "Nomer Salah" 
		And user klik submit
		And user klik yes
		Then data perusahaan "Toko lula" masuk ke task data all dengan status result "Nomer Salah"