import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal-card"
export default class extends Controller {
  static targets = ["nextButton", "card"]

  show() {
    this.cardTarget.classList.toggle('is-flipped');
    this.nextButtonTarget.classList.remove("invisible");
  }

  async loadNewCard() {
    this.nextButtonTarget.classList.add("invisible");
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
