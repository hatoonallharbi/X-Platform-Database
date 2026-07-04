USE X_Platform;
-- ووضع القيم PROCEDUREاستدعاء ال 
CALL createAccount('hatoon@email.com', 'HPass123', 'h_66', 'مهندسة قواعد بيانات');
CALL createAccount('sara@email.com', 'Sara1234', 'sara_10', 'مهتمة بتطوير واجهات المستخدم');
CALL createAccount('lama@email.com', 'Lama2026', 'lama_tw', 'أهلاً بكم في حسابي الرسمي');
-- اTweetsادخال قيم لجدول 
INSERT INTO Tweets (user_id, tweet_content) VALUES 
(1, 'مساء الخير , هذي اول تويته لي هنا'),
(1, 'اليوم رحت مطعم وكان رهيب مره'),
(2, 'انتهيت من اجراء اول بروتوتايب لي');
--  ووضع القيمPROCEDUREاستدعاء ال 
CALL User_Follow('h_66', 'sara_10');
CALL User_Follow('sara_10', 'h_66');
CALL User_Follow('h_66', 'lama_tw');
CALL User_Follow('lama_tw', 'h_66');
CALL User_Follow('sara_10', 'lama_tw');
CALL User_Follow('lama_tw', 'sara_10');
-- Likesاضافة لجدول ال 
INSERT INTO Likes (user_id, tweet_id) VALUES 
(2, 1), 
(1, 2), 
(1, 3),
(3, 1),
(2, 3),
(3, 2);

