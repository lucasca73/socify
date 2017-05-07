import React from 'react';
import PropTypes from 'prop-types';
import AboutBlock from './AboutBlock';
import ProfileBlock from './ProfileBlock';
import './styles.css';

const propTypes = {
  user: PropTypes.object.isRequired
};

const LeftSideBar = ({ user }) => (
  <div>
    <AboutBlock user={user} />
    <ProfileBlock user={user} />
  </div>
);

LeftSideBar.propTypes = propTypes;

export default LeftSideBar;