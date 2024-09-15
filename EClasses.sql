SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Prasoon Sharma', 'prasoon@gmail.com', 'prasoon@123');


CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_author` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL,
  `course_duration` text COLLATE utf8_bin NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(1, 'Machine Learning', '                        This provides an introduction to the principles and practice of machine learning, covering topics such as supervised and unsupervised learning, deep learning, and model evaluation.                                                  ', 'Sir Dhameja', '../images/courseImg/React Library.svg', '15+ hour', 999, 1999),
(4, 'Graphics Designing', '                        It uses typography, imagery, and layout to visually communicate\r\n              ideas and information.                    ', 'PTA NHI', '../images/courseImg/Graphic Designing.svg', '10+ hour', 699, 1499),
(6, 'Full Stack Web Development', '                                                            It involves designing, coding and maintaining both front-end and\r\n              back-end of website.                                                  ', 'Narendra JI', '../images/courseImg/Front End Development.svg', '50+hours', 799, 1999),
(7, 'HTML,CSS Full Course', '                        It involves skeleton, coding and maintaining both skeleton and\r\n              styling of website.                    ', 'Bhandari Popat', '../images/courseImg/HTML CSS.svg', '8+hour', 499, 999),
(8, 'Artificial Intelligence', '                        In this you will get familiar with basics of Artificial\r\n              Intelligece/Artificial intelligence leverages computers and\r\n              machines to mimic the problem-solving and decision-making\r\n              capabilities of the human mind.                    ', 'koi to padha hi dega', '../images/courseImg/Artificial Intelligence.svg', '21 hour', 799, 1699),
(9, 'Database Development Course', '            Study of database design, management, and data storage. In this\r\n              you will get familiar with MySQL database.          ', 'Harshu Bhai', '../images/courseImg/Database Development.svg', '14+hour', 699, 1499),
(12, 'Cloud Computing & Hosting', 'It involves Study of the delivery of computing resources over the\r\n              internet.', 'Narendra Jethi', '../images/courseImg/Cloud Hosting.svg', '15+hour', 899, 1999),
(13, 'Operating System ', '            It includes study of the software that controls the hardware of a\r\n              computer.This contain basic to intermediate knowledge of Operating\r\n              System.          ', 'Nepali Mam', '../images/courseImg/Graphic Designing.svg', '15+hour', 799, 1499),
(14, 'Networking', '            Study of the design and management of computer networks          ', 'Kartikey', '../images/courseImg/Networking.svg', '10+hour', 699, 1499);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL,
  `respmsg` text COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(1, 'ORDS99994328', 'bhagat@gmail.com', 1, 'Success', 'Done', 999, '2029-04-23'),
(2, 'ORDS65891556', 'dhameja_LakhimpurWale@gmail.com', 3, 'Success', 'Done', 799, '2029-04-23'),
(12, 'ORDS61900650', 'harshubhai@gmail.com', 9, 'Success', 'Done', 699, '2016-05-23'),
(55, 'ORDS63397588', 'prasoonsharmajnv97@gmail.com', 1, 'Success', 'Done', 999, '0000-00-00'),
(56, 'ORDS29146053', 'banarasibabu@gmail.com', 1, 'Success', 'Done', 999, '2031-01-24'),
(59, 'ORDS57123805', 'nikhil@gmail.com', 1, 'Success', 'Done', 999, '2031-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text COLLATE utf8_bin NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(2, 'bhut bdiya ha ye,,, yh se padhna varna selection nh hoga bol de rha hu', 30),
(3, 'hello', 34);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `lesson_desc` text COLLATE utf8_bin NOT NULL,
  `lesson_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(1, 'Introduction to Web Development', 'An introduction to web development video typically covers the basics of web development and the technologies involved in creating websites. The video may cover topics such as HTML, CSS, and JavaScript, and how these technologies work together to create web pages. It may also discuss web development tools such as text editors, web browsers, and version control systems. The video may provide a high-level overview of web development, including how websites are hosted and deployed on servers. Overall, an introduction to web development video is a great way for beginners to get a taste of what web development is all about and what they can expect to learn as they delve deeper into the field.        ', '../lessonVId/introductiontowebdevelopment.mp4', 3, 'Front End Development'),
(3, ' Machine Learning Basics', 'An introduction to machine learning basics video usually covers fundamental concepts of machine learning, such as data preparation, feature engineering, model training, and evaluation. The video may start with an explanation of supervised learning and unsupervised learning, and how these approaches can be used to solve different types of problems. The video may also provide an overview of different algorithms used in machine learning, such as linear regression, logistic regression, and k-means clustering. The video may explain how to use machine learning libraries such as scikit-learn, TensorFlow, or PyTorch to implement machine learning models. Overall, an introduction to machine learning basics video is a great way for beginners to get started with machine learning and understand the essential concepts and techniques used in this field.                                                                ', '../lessonVId/MachineLearningBasics.mp4', 1, 'Machine Learning'),
(4, 'Linear Regression', '   Understanding the concept of regression\r\nSimple linear regression     ', '../lessonVId/SimpleLinearRegressionforMachineLearning.mp4', 1, 'Machine Learning'),
(5, ' Classification Algorithms  ', '         Classification Algorithms Basics\r\n', '../lessonVId/ClassificationAlgorithms.mp4', 1, 'Machine Learning'),
(6, 'Introduction to Supervised Learning', 'Supervised learning is a fundamental concept in machine learning, where the model learns from labeled training data to make predictions or classify new, unseen data points. In supervised learning, we have a dataset consisting of input features and corresponding target variables or labels.\r\nThe goal of supervised learning is to build a predictive model that can generalize well to unseen data. The process involves training the model on the labeled data, where it learns the underlying patterns and relationships between the input features and the target variable.\r\nDuring the training phase, the model adjusts its internal parameters using various algorithms and optimization techniques to minimize the prediction errors or maximize the likelihood of correct classifications. Once the model is trained, it can be used to make predictions or classify new instances by inputting their features.\r\nSupervised learning encompasses two main types of tasks: regression and classification. In regression, the target variable is continuous, and the model aims to predict a numeric value. In contrast, classification deals with discrete target variables, where the model assigns input instances to predefined classes or categories.\r\nSupervised learning has numerous real-world applications, such as predicting housing prices based on features like location and size (regression), or classifying emails as spam or not spam based on their content (classification). It forms the foundation for many advanced machine learning techniques and plays a crucial role in solving a wide range of prediction and decision-making problems.    ', '../lessonVId/IntroductiontoSupervisedLearning.mp4', 1, 'Machine Learning');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL,
  `user_msg` text COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(23, 'abc', 'abcd@gmail.com', '456123', '', ''),
(30, 'sachin thakur', 'alfazonkiawaazjnv@gmail.com', '99999999', '', ''),
(31, 'prasoon sharma', 'Prasoonsharmajnv97@gmail.com', '00000000', 'student', '../images/studentsImg/WIN_20230828_21_57_43_Pro.jpg'),
(34, 'nikhil dhameja', 'nikhil@gmail.com', '22222222', '', '../images/studentsImg/'),
(35, 'Pratyush Dubey', 'banarasi_babu@gmail.com', '11111111', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;
