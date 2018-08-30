import React from "react";
import PropTypes from "prop-types";
import axios from "axios";

import s from "./Toolbar.module.scss";

class Toolbar extends React.Component {
  onSignOutClick() {
    axios.delete(this.props.signOutPath);
  }

  render() {
    const { currentUser, homePath, signInPath, signOutPath } = this.props;
    return (
      <nav className={s.toolbar}>
        <ul className={s.subbar}>
          <li>
            <a className={s.button} href={homePath}>
              Home
            </a>
          </li>
        </ul>
        <ul className={s.subbar}>
          {currentUser ? (
            <React.Fragment>
              <li>{currentUser.email}</li>
              <li>
                <div
                  className={s.button}
                  href={signOutPath}
                  onClick={this.onSignOutClick.bind(this)}
                >
                  Sign Out
                </div>
              </li>
            </React.Fragment>
          ) : (
            <React.Fragment>
              <li>
                <a className={s.button} href={signInPath}>
                  Sign In
                </a>
              </li>
            </React.Fragment>
          )}
        </ul>
      </nav>
    );
  }
}

Toolbar.propTypes = {
  currentUser: PropTypes.shape({
    email: PropTypes.string.isRequired
  }),
  homePath: PropTypes.string.isRequired,
  signInPath: PropTypes.string.isRequired,
  signOutPath: PropTypes.string.isRequired
};

Toolbar.defaultProps = {
  currentUser: null
};

export default Toolbar;
