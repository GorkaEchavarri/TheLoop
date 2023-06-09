import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {
  static targets = ['menu']
  connect() {
  }

  toggleMenu() {
    this.menuTarget.classList.toggle('active')
  }
}
