import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal-card"
export default class extends Controller {
  static targets = ["revealCard", "translation", "nextButton", "flashcardContainer"]

    show() {
      this.revealCardTarget.classList.add("d-none");
      this.translationTarget.classList.remove("d-none");
      this.nextButtonTarget.classList.remove("invisible");
    }
  }
