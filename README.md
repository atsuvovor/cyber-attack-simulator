
# Cyber Attack Simulator

## Overview

The **Cyber Attack Simulator** is a modular, AI-augmented platform for simulating diverse cyber threats on structured enterprise data. It allows organizations, researchers, and cybersecurity professionals to explore, analyze, and evaluate the impact of attacks under realistic conditions using customizable parameters, including distinct **attack phases**.

This system also integrates an AI validation agent to ensure data integrity and assist in interpreting simulation results.

---

## Key Features

* **Realistic Attack Simulations**: Simulates phishing, malware, DDoS, data leaks, insider threats, and ransomware attacks.
* **Phased Attack Modeling**: Simulate attack progression through three defined phases:

  * `initial` – reconnaissance and foothold establishment
  * `escalation` – lateral movement, privilege escalation, deeper system penetration
  * `exfiltration` – data exfiltration, system damage, and mission completion
* **Anomaly Injection**: Inject noise using statistical distributions (e.g., normal, Poisson, exponential) to emulate abnormal system behavior.
* **AI Agent**:

  * Validates uploaded datasets for schema accuracy and data consistency
  * Reviews simulation outputs and offers contextual, human-readable analysis
* **Interactive Streamlit Interface**: Graphical interface for uploading data, selecting attacks, running simulations, and visualizing results.
* **Custom or Default Data Support**: Use the built-in example dataset or upload a structured CSV file with the same schema.

---

## Dataset Structure

The default dataset is stored at:

```
data/normal_and_anomalous_flaged_df.csv
```

It contains 36 columns covering threat indicators, user behaviors, system metrics, and labels. Uploaded datasets must match this schema:

* Categorical fields like `Issue Name`, `Category`, `Severity`, `User ID`, `Threat Level`
* Numerical fields like `Impact Score`, `Session Duration in Second`, `Threat Score`, `CPU Usage %`
* Binary flags such as `Pred Threat`, `is_anomaly`

See the full column structure [here](#) or in the sample data for reference.

---

## Supported Attacks

The following cyberattacks are available for simulation, and each one is customizable by **phase**:

* **Phishing**
* **Malware**
* **DDoS (Distributed Denial of Service)**
* **Data Leak**
* **Insider Threat**
* **Ransomware**

Each attack behaves differently across the `initial`, `escalation`, and `exfiltration` phases. This enables you to simulate progressive stages of compromise and evaluate detection or mitigation strategies over time.

---

## Application Usage

### Local Setup

Install dependencies:

```bash
pip install -r requirements.txt
```

Run the application:

```bash
streamlit run app.py
```

### Streamlit UI Features

* Load the default dataset or upload your own
* Select one or multiple attack types
* Choose attack phase (`initial`, `escalation`, or `exfiltration`)
* Run simulations and visualize results
* Get AI-powered analysis of results

---

## AI Agent Capabilities

The built-in agent leverages language models and structured schema comparison to:

* Verify that uploaded CSV files align with expected schema (columns, types, nullability)
* Identify potential formatting or data integrity issues
* Provide summary reports, insights, and recommendations after simulations

---

## Testing the System

Run the test suite with:

```bash
pytest
```

Tests are organized in the `tests/` folder and cover:

* Attack logic
* Dataset validation
* AI agent response integrity

---

## Project Structure

```
cyber-attack-simulator/
├── app.py                      # Main Streamlit interface
├── ai_agent/
│   └── ai_agent.py             # Dataset validation and report analysis
├── simulator/
│   ├── attack_simulator.py     # Core logic and phase handling
│   ├── coordinated_attack.py   # Multiple attack orchestration
│   └── attack_classes.py       # Definitions for each attack type
├── data/
│   └── normal_and_anomalous_flaged_df.csv
├── tests/
│   ├── test_ai_agent.py
│   ├── test_attack_simulation.py
│   └── test_data_validation.py
├── requirements.txt
├── setup.py
├── setup.cfg
├── pytest.ini
└── README.md
```

---

## Deployment Options

This project is deployable via:

* **Streamlit Cloud**
* **GitHub** (for collaborative development)
* **Docker or Python Virtual Environments** (using `setup.py` and `requirements.txt`)

---

## Contribution Guidelines

We welcome contributions! Please fork the repository and submit a pull request. Make sure your code passes existing tests and includes new tests for any added functionality.

---

## License

Distributed under the MIT License. See `LICENSE` for full terms.


