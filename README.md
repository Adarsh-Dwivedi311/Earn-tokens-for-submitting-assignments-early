# LearnToEarn Smart Contract

## Project Title
#Earn tokens for submitted assignments early.

## Project Description
LearnToEarn is a decentralized platform that rewards users with tokens for completing educational courses. The platform allows course creators to design courses with token rewards, and learners are incentivized to complete these courses in exchange for tokens. This smart contract powers the LearnToEarn platform, enabling transparent and secure management of courses, rewards, and user progress.

## Contract Address
0xf3c472cD0B7ea8B716F6d9D240a0Ee45233d6a4E
![image](https://github.com/user-attachments/assets/73a6fa01-2de2-4ac2-9928-275e1876ac63)


## Project Vision
The LearnToEarn platform aims to revolutionize education by integrating blockchain technology and token-based incentives. By gamifying the learning experience, we strive to enhance user engagement, reward knowledge acquisition, and create a transparent ecosystem for both learners and educators.

## Key Features
1. **Course Creation:**
   - Admin (contract owner) can create courses with unique IDs, titles, and reward tokens.

2. **Token Rewards:**
   - Users earn tokens for completing courses successfully.

3. **Progress Tracking:**
   - Tracks user progress, including tokens earned and completed courses.

4. **Decentralized Transparency:**
   - Built on Ethereum blockchain for secure and tamper-proof operations.

5. **Event Notifications:**
   - Emits events for course creation and completion, ensuring seamless integration with front-end applications.

6. **Scalability:**
   - Supports multiple courses and users, with efficient reward distribution.

## How It Works
1. **For Admins:**
   - Admins can create courses using the `createCourse` function, specifying the title and reward amount.

2. **For Users:**
   - Users complete courses via the `completeCourse` function, which verifies their eligibility and rewards them accordingly.

3. **Tracking Progress:**
   - Use `getTokensEarned` to view total tokens earned by a user.
   - Check if a course is completed using `isCourseCompleted`.

## Deployment
Once deployed, the contract address will be added here to facilitate interaction via web3-enabled applications.

---
Let us know if you have any questions or need further enhancements to the contract or documentation.
