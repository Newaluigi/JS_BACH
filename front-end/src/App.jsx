import Header from "./Components/Header";
import { Route, Routes } from "react-router-dom";
import List from "./Pages/List";
import Roads from "./Pages/Roads";
import Gallery from "./Pages/Gallery";
import Home from "./Pages/Home";
import Footer from "./Components/Footer";

function App() {
  return (
    <div className="App">
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/list" element={<List />} />
        <Route path="/roads" element={<Roads />} />
        <Route path="/gallery" element={<Gallery />} />
      </Routes>
      <Footer />
    </div>
  );
}

export default App;
