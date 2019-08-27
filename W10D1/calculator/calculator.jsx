import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      num1: '',
      num2: '',
      result: 0
    };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.addNums = this.addNums.bind(this);
    this.subNums = this.subNums.bind(this);
    this.multNums = this.multNums.bind(this);
    this.divNums = this.divNums.bind(this);
    this.clear = this.clear.bind(this);
  }

  setNum1(event) {
    const num1 = event.target.value ? parseInt(event.target.value) : "";
    this.setState({ num1: num1 });
  }

  setNum2(event) {
    const num2 = event.target.value ? parseInt(event.target.value) : "";
    this.setState({ num2: num2 });
  }

  addNums(event) {
    event.preventDefault();
    const result = this.state.num1 + this.state.num2;
    this.setState({ result });
  }

  subNums(event) {
    event.preventDefault();
    const result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multNums(event) {
    event.preventDefault();
    const result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  divNums(event) {
    event.preventDefault();
    const result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  clear(event) {
    event.preventDefault();
    this.setState({ 
      num1: '',
      num2: '',
      result: 0
    })
  }

  //your code here

  render(){
    return (
      <div>
        <h1>Hello World</h1>
        <h2>{this.state.result}</h2>
        <input onChange={this.setNum1} value={this.num1}/>
        <input onChange={this.setNum2} value={this.num2}/>
        <button onClick={this.clear}>Clear</button>
        <br/>
        <button onClick={this.addNums}>+</button>
        <button onClick={this.subNums}>-</button>
        <button onClick={this.multNums}>*</button>
        <button onClick={this.divNums}>/</button>
      </div>
    );
  }
}

export default Calculator;
