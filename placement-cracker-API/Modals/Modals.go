package Modals

type Courses struct {
	Name  string `json:"name"`
	Image []byte `json:"image"`
	Link  string `json:"link"`
}

type Jobs struct {
	Name  string `json:"name"`
	Role  string `json:"role"`
	Image []byte `json:"image"`
	Link  string `json:"link"`
}
type Articles struct {
	Description string `json:"description"`
	Image       []byte `json:"image"`
	Link        string `json:"link"`
}
type Programs struct {
	Name        string `json:"name"`
	Image       []byte `json:"image"`
	Link        string `json:"link"`
	Description string `json:"description"`
}
