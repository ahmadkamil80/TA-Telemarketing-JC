Feature: Add User Management
	
	Scenario: Valid Add User Management
		Given user sedang berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user mamasukan username "developer"
		And user memasukan password "23"
		And user menekan tombol submit
		And user menekan tombol ok
		And user klik User Management
		And user klik User
		And user klik Add
		And user isi Full Name "Mamat Suramat"
		And user memilih Privilages
		And user memilih Supervisor
		And user memasukan no Telephone "0857123053"
		And user memasukan no Extension "2122"
		And user memasukan Username "Mamat"
		And user memasukan Password "22"
		And user klik Save
		And user Klik Yes
		Then apakah ada username "Mamat"
		And user klik profile
		And user klik Ya untuk keluar
		And user memasukan username "Mamat"
		And user memasukan password "22"
		And user klik sign in
		
		Scenario: Invalid Add User Management
		Given user sedang berada di halaman login "https://sqa.peluangkerjaku.com/tele/"
		When user mamasukan username ""
		And user memasukan password ""
		And user menekan tombol submit
		And user menekan tombol ok
		And user klik User Management
		And user klik User
		And user klik Add
		And user isi Full Name ""
		And user memilih Privilages
		And user memilih Supervisor
		And user memasukan no Telephone ""
		And user memasukan no Extension ""
		And user memasukan Username ""
		And user memasukan Password ""
		And user klik Save
		And user Klik Yes
		Then apakah ada username ""
		And user klik profile
		And user klik Ya untuk keluar
		And user memasukan username ""
		And user memasukan password ""
		And user klik sign in
		