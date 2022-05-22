package Database

import (
	"placementCracker_api/Modals"
	"placementCracker_api/imageProcessing"
)

func GetDataJobs() []Modals.Jobs {
	jobs := []Modals.Jobs{
		{"Oppo", "Account Executive", imageProcessing.ImageToBase64("images/oppo.png"), "https://alljobsinindia.in/oppo-off-campus-drive-2022/"},
		{"IBM", "Associate System Engineer", imageProcessing.ImageToBase64("images/ibm.png"), "https://bit.ly/3v769Py"},
		{"Genesys", "Associate Software Engineer", imageProcessing.ImageToBase64("images/genesys.jpg"), "https://jobforfresher.in/genesys-recruitment-2022/"},
		{"Volvo", "Engineers", imageProcessing.ImageToBase64("images/volvo.jpg"), "https://bit.ly/3KGjIvJ"},
		{"Tech Mahindra", "Associate Software Engineer", imageProcessing.ImageToBase64("images/mahindra.jpg"), "https://bit.ly/3jyLrCI"},
		{"Adobe", "SDE", imageProcessing.ImageToBase64("images/adobe.png"), "https://alljobsinindia.in/adobe-software-development-engineer/"},
		{"Amazon", "Trade Marketing Associate", imageProcessing.ImageToBase64("images/amazon.jpg"), "https://alljobsinindia.in/amazon-is-hiring-trade/"},
		{"HCL", "HR Senior Executive", imageProcessing.ImageToBase64("images/hcl.jpg"), "https://bit.ly/37qz7Sg"},
		{"Genpact", "Process Associate", imageProcessing.ImageToBase64("images/Genpact.png"), "https://bit.ly/3DR8cuS"},
		{"TCS", "TCS Digital Hiring", imageProcessing.ImageToBase64("images/tcs.png"), "https://jobforfreshar.in/index.php/tcs-recruitment-2022-for-digital-hiring/"},
		{"Wipro", "Associate", imageProcessing.ImageToBase64("images/wipro.jpg"), "https://bit.ly/3NoOz1Q "},
		{"Tata Steel", "Engineer Trainee", imageProcessing.ImageToBase64("images/tata.png"), "https://alljobsinindia.in/tata-steel-recruitment-2022/"},
		{"Eloelo", "Android developer", imageProcessing.ImageToBase64("images/eloelo.jpg"), "https://tinyurl.com/5xe32nke"},
		{"OYO", "Mobility Manager", imageProcessing.ImageToBase64("images/oyo.jpg"), "https://bit.ly/3600XV0"},
	}
	return jobs
}
