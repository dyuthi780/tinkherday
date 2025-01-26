function suggestCareer() {
  // Get the user input from the textarea
  const interestInput = document.getElementById("interestInput").value.toLowerCase();

  // Clear previous results
  const careerList = document.getElementById("careerList");
  careerList.innerHTML = "";

  // Define a set of sample interests and associated careers
  const careers = {
    "technology": ["Software Engineer", "Web Developer", "Data Scientist", "Cybersecurity Analyst"],
    "art": ["Graphic Designer", "Artist", "Animator", "Photographer"],
    "business": ["Marketing Manager", "Financial Analyst", "Entrepreneur", "Product Manager"],
    "health": ["Nurse", "Physician", "Physical Therapist", "Healthcare Administrator"],
    "education": ["Teacher", "School Counselor", "Education Administrator", "Special Education Teacher"],
    "science": ["Biologist", "Chemist", "Environmental Scientist", "Research Scientist"],
    "sports": ["Personal Trainer", "Sports Psychologist", "Athletic Coach", "Sports Agent"],
    "music": ["Music Producer", "Composer", "Sound Engineer", "Music Teacher"]
  };

  // Determine the career suggestion based on user input
  let matchedCareers = [];

  for (let interest in careers) {
    if (interestInput.includes(interest)) {
      matchedCareers = careers[interest];
      break;
    }
  }

  // If no match is found, show a general suggestion
  if (matchedCareers.length === 0) {
    matchedCareers = ["Career Coach", "Career Advisor", "Researcher", "Job Consultant"];
  }

  // Display the results
  matchedCareers.forEach(career => {
    const li = document.createElement("li");
    li.textContent = career;
    careerList.appendChild(li);
  });

  // Animate result section
  document.getElementById("result").style.opacity = "1";
}
