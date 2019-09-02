import React from 'react';

import GiphysIndexItem from './giphys_index_item';

function GiphysIndex ({ giphys }) {
    return (
        <div>
            <h3>Here are some gifs!</h3>
            <ul>
                {
                giphys.map(giphy => <GiphysIndexItem key={giphy.id} giphy={giphy} />)
                }
            </ul>
        </div>
    );
}

export default GiphysIndex;
