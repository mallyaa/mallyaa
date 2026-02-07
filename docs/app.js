(function () {
  const loading = document.getElementById("loading");
  const cards = document.getElementById("cards");
  const streakEl = document.getElementById("streak");
  const totalEl = document.getElementById("total");

  fetch("data/updates.json")
    .then(function (r) {
      if (!r.ok) throw new Error(r.statusText);
      return r.json();
    })
    .then(function (data) {
      loading.remove();
      streakEl.textContent = data.streak;
      totalEl.textContent = data.total;

      const list = data.updates || [];
      list.reverse().forEach(function (u) {
        const card = document.createElement("article");
        card.className = "card";
        card.innerHTML =
          '<div class="card-date">' + formatDate(u.date) + "</div>" +
          section("Shipped", u.shipped, "shipped") +
          section("Learned", u.learned, "learned") +
          section("Note", u.note, "note");
        cards.appendChild(card);
      });
    })
    .catch(function () {
      loading.textContent = "No data yet. Run the workflow to seed the first day.";
    });

  function formatDate(ymd) {
    const d = new Date(ymd + "T12:00:00Z");
    return d.toLocaleDateString("en-US", {
      weekday: "short",
      year: "numeric",
      month: "short",
      day: "numeric",
    });
  }

  function section(title, content, className) {
    const text = (content || "").trim();
    return (
      '<div class="card-section ' +
      className +
      '">' +
      '<div class="card-section-title">' +
      title +
      "</div>" +
      '<div class="card-section-content">' +
      escapeHtml(text) +
      "</div>" +
      "</div>"
    );
  }

  function escapeHtml(s) {
    const div = document.createElement("div");
    div.textContent = s;
    return div.innerHTML;
  }
})();
