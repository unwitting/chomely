import React from "react";
import PropTypes from "prop-types";
import _ from "lodash";

import s from "./Flash.module.scss";

const Flash = ({ flashes }) =>
  _.size(flashes) === 0 ? (
    <React.Fragment />
  ) : (
    <div className={s.flashBar}>
      {flashes.map(([key, value], i) => (
        <div
          key={`flash-${i}-${key}`}
          className={s.flash}
        >{`${key}: ${value}`}</div>
      ))}
    </div>
  );

Flash.propTypes = {
  flashes: PropTypes.arrayOf(PropTypes.array)
};

Flash.defaultProps = {
  flashes: {}
};

export default Flash;
