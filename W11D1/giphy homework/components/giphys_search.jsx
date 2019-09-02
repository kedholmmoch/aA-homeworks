import React from 'react';

import GiphysIndex from './giphys_index';

export default class GiphysSearch extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            searchTerm: ''
        };

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentDidMount() {
        this.props.fetchSearchGiphys('golden+retriever');
    }

    handleChange(event) {
        event.preventDefault();
        this.setState({
            searchTerm: event.target.value
        })
    }

    handleSubmit(event) {
        event.preventDefault();
        let searchTerm = this.state.searchTerm.split(' ').join('+');
        this.props.fetchSearchGiphys(searchTerm);
    }

    render() {
        const { giphys } = this.props;
        const { searchTerm } = this.state;
        return(
            <div>
                <h1>GIPHYS</h1>
                <form className='search-bar'>
                    <input value={searchTerm} onChange={this.handleChange} placeholder="What do you want to search?"/>
                    <button type="submit" onClick={this.handleSubmit}>Search Giphy!</button>
                    <GiphysIndex giphys={giphys} />
                </form>

            </div>
        )
    };
}
