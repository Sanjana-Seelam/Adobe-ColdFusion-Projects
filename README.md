Prerequisites ColdFusion Server (version 2024 or later recommended) Web Browser (e.g., Chrome, Firefox, Safari)


import React, { useState } from 'react';
import { useDispatch } from 'react-redux';
import './AllowListForm.scss';

const AllowListForm = () => {
  const dispatch = useDispatch();
  
  const [formData, setFormData] = useState({
    highLevelSummary: '',
    reporter: '',
    description: '',
    ticketType: '',
    domains: '',
    e1ReleaseDate: '',
    e2ReleaseDate: '',
    e3ReleaseDate: '',
    allowlist: {
      oneData: false,
      ucmApi: false
    },
    akamaiJiraTicket: '',
    infosecApprovalEmail: null
  });

  const handleChange = (e) => {
    const { name, value, type, checked } = e.target;
    setFormData(prevState => ({
      ...prevState,
      [name]: type === 'checkbox' ? checked : value
    }));
  };

  const handleAllowlistChange = (e) => {
    const { name, checked } = e.target;
    setFormData(prevState => ({
      ...prevState,
      allowlist: {
        ...prevState.allowlist,
        [name]: checked
      }
    }));
  };

  const handleFileChange = (e) => {
    setFormData(prevState => ({
      ...prevState,
      infosecApprovalEmail: e.target.files[0]
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    dispatch(submitAllowListForm(formData));
  };

  return (
    <form onSubmit={handleSubmit} className="allow-list-form">
      <label>
        High Level Summary:
        <input type="text" name="highLevelSummary" value={formData.highLevelSummary} onChange={handleChange} required />
      </label>

      <label>
        Reporter:
        <input type="text" name="reporter" value={formData.reporter} onChange={handleChange} required />
      </label>

      <label>
        Description:
        <textarea name="description" value={formData.description} onChange={handleChange} required />
      </label>

      <label>
        Ticket Type:
        <select name="ticketType" value={formData.ticketType} onChange={handleChange} required>
          <option value="">Select</option>
          {/* Add more options here */}
        </select>
      </label>

      <label>
        Domains:
        <textarea name="domains" value={formData.domains} onChange={handleChange} required />
      </label>

      <label>
        E1 Release Date:
        <input type="date" name="e1ReleaseDate" value={formData.e1ReleaseDate} onChange={handleChange} required />
      </label>

      <label>
        E2 Release Date:
        <input type="date" name="e2ReleaseDate" value={formData.e2ReleaseDate} onChange={handleChange} required />
      </label>

      <label>
        E3 Release Date:
        <input type="date" name="e3ReleaseDate" value={formData.e3ReleaseDate} onChange={handleChange} required />
      </label>

      <fieldset>
        <legend>Allowlist</legend>
        <label>
          <input type="checkbox" name="oneData" checked={formData.allowlist.oneData} onChange={handleAllowlistChange} />
          One Data
        </label>
        <label>
          <input type="checkbox" name="ucmApi" checked={formData.allowlist.ucmApi} onChange={handleAllowlistChange} />
          UCM API
        </label>
      </fieldset>

      <label>
        Akamai Jira Ticket:
        <input type="text" name="akamaiJiraTicket" value={formData.akamaiJiraTicket} onChange={handleChange} required />
      </label>

      <label>
        Infosec Approval Email:
        <input type="file" onChange={handleFileChange} required />
      </label>

      <button type="submit">Save</button>
    </form>
  );
};

export default AllowListForm;



// actions.js
export const submitAllowListForm = (formData) => ({
  type: 'SUBMIT_ALLOWLIST_FORM',
  payload: formData
});

// reducer.js
const initialState = {
  formData: {}
};

export const allowListFormReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'SUBMIT_ALLOWLIST_FORM':
      return {
        ...state,
        formData: action.payload
      };
    default:
      return state;
  }
};


// actions.js
export const submitAllowListForm = (formData) => ({
  type: 'SUBMIT_ALLOWLIST_FORM',
  payload: formData
});

// reducer.js
const initialState = {
  formData: {}
};

export const allowListFormReducer = (state = initialState, action) => {
  switch (action.type) {
    case 'SUBMIT_ALLOWLIST_FORM':
      return {
        ...state,
        formData: action.payload
      };
    default:
      return state;
  }
};
