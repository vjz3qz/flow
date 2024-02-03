import { supabase } from "../config/supabase";

async function register(req, res) {
  const { name, email, password } = req.body;

  const { data, error } = await supabase.auth.signUp({
    email: email,
    password: password,
    options: {
      data: {
        name: name,
      },
    },
  });

  if (error) {
    return res.status(400).json({ error: error.message });
  }
  return res.status(200).json({ data });
}

async function login(req, res) {
  const { email, password } = req.body;
  const { data, error } = await supabase.auth.signIn({
    email: email,
    password: password,
  });
  if (error) {
    return res.status(400).json({ error: error.message });
  }
  return res.status(200).json({ data });
}

async function logout(req, res) {
  const { error } = await supabase.auth.signOut();
  if (error) {
    return res.status(400).json({ error: error.message });
  }
  return res.status(200).json({ message: "Logged out" });
}

export default { register, login, logout };
