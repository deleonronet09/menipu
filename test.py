import calculator
import unittest
import pdb
class TestCalculator(unittest.TestCase):
  def test_spam(self):
    self.fail()

  def test_Add(self):
    self.assertEqual(calculator.add(1,1),2)
  
  def test_Subtract(self):
    self.assertEqual(calculator.subtract(15,10),5)
  
  def test_Multiply(self):
    self.assertEqual(calculator.multiply(1,1),1)

  def test_None(self):
    self.assertEqual(calculator.operator(1,'A',1),None)

  def test_operator(self):
    self.assertEqual(calculator.add(13,11),24)
    self.assertEqual(calculator.subtract(15,-10),25)
    self.assertEqual(calculator.divide(16,2),8)
    self.assertEqual(calculator.multiply(7,-3),-21)

  def test_Output(self):
    self.assertEqual(calculator.output(10,'/',10,1),'10 / 10 = 1')

  def test_inputop(self):
    self.assertEqual(calculator.inputop(self.mock_inputop),1)

  def mock_inputop(self,prompt):
    return 1

  def test_input1(self):
    self.assertEqual(calculator.input1(self.mock_input1),1)

  def mock_input1(self,prompt):
    return 1

  def test_input2(self):
    self.assertEqual(calculator.input2(self.mock_input2),1)

  def mock_input2(self,prompt):
    return 1

  def test_operator(self):
    self.assertEqual(calculator.operator(1,self.mock_operator(''),1),2)
  
  def mock_operator(self,prompt):
    return '+'

  def test_stringinput(self):
    with self.assertRaises(TypeError):
      self.assertEqual(calculator.add(1,'A'),2)

  def test_ZeroDivisionError(self):
    with self.assertRaises(ZeroDivisionError):
      calculator.divide(10,0)  

  def test_success(self):
    num1 = calculator.input1(self.mock_input1)
    oper = calculator.inputop(self.mock_operator)
    num2 = calculator.input2(self.mock_input2)
    ans = calculator.operator(num1,oper,num2)
    final = calculator.output(num1,oper,num2,ans)
    self.assertEqual(final,"1 + 1 = 2")


if __name__ == "__main__":
  unittest.main()
