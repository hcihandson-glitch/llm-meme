export type Condition = "human-first" | "ai-first";

export type Topic = { id: string; title: string; description: string };
export type Template = { id: string; name: string; imageUrl: string };

export type Meme = {
  id: string;
  templateId: string;
  caption: string;
  imageUrl: string; // final rendered meme (or template preview)
  source: "human" | "ai" | "ai-improved";
};

export type MemeRating = {
  memeId: string;
  creativity: number;      // 1-5
  shareability: number;    // 1-5
  relatability: number;    // 1-5
  like: boolean;
};
