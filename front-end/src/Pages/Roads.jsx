import axios from "axios";
import { useState, useEffect } from "react";

export default function Roads() {
  const [roads, setRoads] = useState([]);
  useEffect(() => {
    axios.get("http://localhost:5000/roads").then((response) => {
      setRoads(response.data);
    });
  }, []);

  return (
    <div className="roadBody">
      <div className="box">
        <div className="card">
          <div className="imgBx">
            <img
              src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Plaque_Rue_Jean_S%C3%A9bastien_Bach_-_Paris_XIII_%28FR75%29_-_2021-06-30_-_2.jpg/800px-Plaque_Rue_Jean_S%C3%A9bastien_Bach_-_Paris_XIII_%28FR75%29_-_2021-06-30_-_2.jpg?20210701003447"
              alt="images"
            />
          </div>
          <div className="details">
            <a
              href={`https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(
                "Rue Jean-Sébastien-Bach Paris"
              )}`}
              target="_blank"
              rel="noopener noreferrer"
              className="event-infos"
              style={{ textDecoration: "none", color: "#ffffff" }}
            >
              <h2>
                Rue Jean-Sébastien-Bach
                <br />
                <span>Paris</span>
              </h2>
            </a>
          </div>
        </div>

        <div className="card">
          <div className="imgBx">
            <img
              src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/All%C3%A9e_Jean-S%C3%A9bastien_Bach%2C_Rennes%2C_2022.jpg/800px-All%C3%A9e_Jean-S%C3%A9bastien_Bach%2C_Rennes%2C_2022.jpg?20220325215756"
              alt="images"
            />
          </div>
          <div className="details">
            <a
              href={`https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(
                "Allée Jean-Sébastien-Bach Rennes"
              )}`}
              target="_blank"
              rel="noopener noreferrer"
              className="event-infos"
              style={{ textDecoration: "none", color: "#ffffff" }}
            >
              <h2>
                Allée Jean-Sébastien-Bach
                <br />
                <span>Rennes</span>
              </h2>
            </a>
          </div>
        </div>

        <div className="card">
          <div className="imgBx">
            <img
              src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/17.9.20_Linz_228_%2850354887366%29.jpg/800px-17.9.20_Linz_228_%2850354887366%29.jpg?20220209133931"
              alt="images"
            />
          </div>
          <div className="details">
            <a
              href={`https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(
                "Sebastian-Bach-Straße Linz"
              )}`}
              target="_blank"
              rel="noopener noreferrer"
              className="event-infos"
              style={{ textDecoration: "none", color: "#ffffff" }}
            >
              <h2>
                Sebastian-Bach-Straße
                <br />
                <span>Linz</span>
              </h2>
            </a>
          </div>
        </div>
      </div>
    </div>
  );
}
