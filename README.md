Prerequisites ColdFusion Server (version 2024 or later recommended) Web Browser (e.g., Chrome, Firefox, Safari)

.allow-list-form {
  display: flex;
  flex-direction: column;
  max-width: 600px;
  margin: auto;
  
  label {
    margin-bottom: 1rem;
    display: flex;
    flex-direction: column;

    input,
    select,
    textarea {
      margin-top: 0.5rem;
      padding: 0.5rem;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
  }

  fieldset {
    border: 1px solid #ccc;
    padding: 1rem;
    margin-bottom: 1rem;

    legend {
      font-weight: bold;
    }

    label {
      display: flex;
      align-items: center;
      
      input {
        margin-right: 0.5rem;
      }
    }
  }

  button {
    padding: 0.75rem 1.5rem;
    border: none;
    background-color: #0073e6;
    color: #fff;
    border-radius: 4px;
    cursor: pointer;

    &:hover {
      background-color: #005bb5;
    }
  }
}
