import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal-card"
export default class extends Controller {
  static targets = ["revealCard", "translation", "nextButton", "newCard"]

  show() {
    this.revealCardTarget.classList.add("d-none");
    this.translationTarget.classList.remove("d-none");
    this.nextButtonTarget.classList.remove("invisible");
  }

  async loadNewCard() {
    try {
      const response = await fetch(window.location.pathname, {
        headers: { "Accept": "text/vnd.turbo-stream.html" }
      });

      if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);

      const text = await response.text();
      Turbo.renderStreamMessage(text); 
    } catch (error) {
      console.error("Error loading new card:", error);
    }
  }

}
