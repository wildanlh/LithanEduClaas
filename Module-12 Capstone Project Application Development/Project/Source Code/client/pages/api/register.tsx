import { NextApiRequest, NextApiResponse } from "next";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method === "POST") {
    const {
      firstName,
      lastName,
      phone,
      address,
      city,
      country,
      email,
      password,
    } = req.body;

    const result = await {
      firstName,
      lastName,
      phone,
      address,
      city,
      country,
      email,
      password,
    };

    if (result.insertedCount === 1) {
      // Redirect the user to the login page
      res.redirect("/login");
    } else {
      res.status(500).json({ error: "Failed to register user" });
    }
  } else {
    res.status(405).json({ error: "Method not allowed" });
  }
}
