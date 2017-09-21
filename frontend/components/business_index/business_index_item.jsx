import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const BusinessIndexItem = ({ business }) => {
  return (
    <li>
      <Link to={`/businesses/${business.id}`}>
        {business.name}
      </Link>
    </li>
  );
};

export default BusinessIndexItem;
