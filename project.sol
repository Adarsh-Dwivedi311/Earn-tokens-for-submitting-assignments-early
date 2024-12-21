// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearnToEarn {
    address public owner;

    struct Course {
        uint256 id;
        string title;
        uint256 reward;
        address teacher;
    }

    struct User {
        uint256 tokensEarned;
        mapping(uint256 => bool) completedCourses;
    }

    mapping(address => User) public users;
    mapping(uint256 => Course) public courses;

    uint256 public totalCourses;
    uint256 public totalTokens;

    event CourseCreated(uint256 id, string title, uint256 reward, address teacher);
    event CourseCompleted(address user, uint256 courseId, uint256 reward);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action.");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function createCourse(string memory _title, uint256 _reward) public onlyOwner {
        courses[totalCourses] = Course({
            id: totalCourses,
            title: _title,
            reward: _reward,
            teacher: msg.sender
        });
        totalCourses++;
        emit CourseCreated(totalCourses - 1, _title, _reward, msg.sender);
    }

    function completeCourse(uint256 _courseId) public {
        require(_courseId < totalCourses, "Invalid course ID.");
        require(!users[msg.sender].completedCourses[_courseId], "Course already completed.");

        Course memory course = courses[_courseId];

        users[msg.sender].completedCourses[_courseId] = true;
        users[msg.sender].tokensEarned += course.reward;
        totalTokens += course.reward;

        emit CourseCompleted(msg.sender, _courseId, course.reward);
    }

    function getTokensEarned(address _user) public view returns (uint256) {
        return users[_user].tokensEarned;
    }

    function isCourseCompleted(address _user, uint256 _courseId) public view returns (bool) {
        return users[_user].completedCourses[_courseId];
    }
}
