<%*
/* 1) Ask for the main MOC title */
const topic = await tp.system.prompt("Main MOC title", "Machine Learning");

/* 2) Ask for comma-separated subtopics */
const raw   = await tp.system.prompt("Subtopics (comma-separated)", "SVM, Decision Trees, Neural Networks");

/* 3) Build the list */
const items = raw.split(",").map(s => s.trim()).filter(s => s.length);

/* 4) Generate the markdown */
let out = `# MOC – ${topic}\n\n`;
for (const item of items) {
  const link = item.replace(/\s+/g, "_");
  out += `## ${item}\n- [[2_Sandbox/${link}]]\n\n`;
}

/* 5) Hand it back to Templater */
tR = out;
%>