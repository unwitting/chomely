import React from "react";
import PropTypes from "prop-types";

import s from "./HomePage.module.scss";

class HomePage extends React.Component {
  render() {
    return (
      <div className={s.page}>
        <h1>
          <small>welcome to </small>
          carehomely
        </h1>
      </div>
    );
  }
}

export default HomePage;
