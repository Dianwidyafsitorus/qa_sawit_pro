# 📱 QA Sawit Pro - Mobile Test Automation

Automated testing project for the **Sawit Pro** Android mobile application using [Robot Framework](https://robotframework.org/) and [Appium](https://appium.io/).

---

## 🚀 Tech Stack

- [Robot Framework](https://robotframework.org/)
- [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary)
- [Python 3.8+](https://www.python.org/)
- [Appium Server](https://appium.io/)
- Android Emulator or Real Device

---

## 📁 Project Structure
qa_sawit_pro/
├── tests/ # Test cases (login, logout, etc.)
│ └── login_logout_tests.robot
├── keywords/ # Custom keywords
│ └── login_keywords.robot
├── resources/ # Variables & element locators
│ ├── variables.robot
│ └── locators.robot
├── results/ # Test results (log.html, report.html)
├── .env # (Optional) secrets/config
├── README.md # Project documentation
└── requirements.txt # Python dependencies

yaml
Salin
Edit

---

## ⚙️ Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/Dianwidyafsitorus/qa_sawit_pro.git
cd qa_sawit_pro
2. Install Dependencies
bash
Salin
Edit
pip install -r requirements.txt
Contents of requirements.txt:

arduino
Salin
Edit
robotframework
Appium-Python-Client
robotframework-appiumlibrary
python-dotenv
Install Appium separately:

bash
Salin
Edit
npm install -g appium
Or use Appium desktop: https://github.com/appium/appium-desktop

3. Prepare Android Emulator or Real Device
Start emulator or connect real device with USB debugging enabled.

Verify device:

bash
Salin
Edit
adb devices
4. Run Test
bash
Salin
Edit
robot -d results tests/login_logout_tests.robot
Output will be in the results/ folder:

log.html

report.html

output.xml

✅ Test Scenarios
✅ Successful Login and Logout
User logs in with valid credentials

Dashboard is displayed

User logs out

Login screen is shown again

❌ Login With Wrong Password
User enters valid username but wrong password

Error message is displayed

📸 Locator Strategy
Locators are stored in resources/locators.robot. Use Appium Inspector to capture element IDs or XPath.

🤝 Contributing
Create feature branch: git checkout -b feature/your-feature

Commit changes: git commit -m "feat: add your feature"

Push branch: git push origin feature/your-feature

Open Pull Request

🧑 Author
Dian Widya F. Sitorus
📧 [dianwidyafsitorus@gmail.com]


