import logo from "./logo.svg";
import { useEffect, useState } from "react";
import "./App.css";

function App() {
  const [title, setTitle] = useState("Default Value");
  const getTitle = async () => {
    const response = await fetch(`${window.wingEnv.apiUrl}/title`);
    setTitle(await response.text());
  };

  useEffect(() => {
    getTitle();
  }, []);

  // Example usage:

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        {title}
      </header>
    </div>
  );
}

export default App;
