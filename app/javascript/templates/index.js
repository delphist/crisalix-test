export const doctorElement = ({ city, name, book_url }) => `
  <div class="col">
    <div class="card shadow-sm mb-4">
      <div class="card-body">
        <h4>${name}</h4>
        <p class="card-text">${city}</p>
        <a href="${book_url}" class="btn btn-sm btn-outline-secondary">Book</a>
      </div>
    </div>
  </div>
`;
