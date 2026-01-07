import type { Meme } from "../app/session/types";

export async function generateMemesMock(): Promise<Meme[]> {
  // Replace later with real fetch("/api/meme")
  return [
    {
      id: crypto.randomUUID(),
      templateId: "t1",
      caption: "When the code works on the first try… and you don’t trust it.",
      imageUrl: "/templates/t1.png",
      source: "ai",
    },
  ];
}
