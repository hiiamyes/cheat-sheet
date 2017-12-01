sass + css module

```
{
  test: /(\.scss|\.css)$/,
  include: path.join(__dirname, 'src'),
  use: [
    'style-loader',
    {
      loader: 'css-loader',
      options: {
        sourceMap: true,
        modules: true,
        importLoaders: 1,
        localIdentName: '[name]__[local]___[hash:base64:5]'
      }
    },
    {
      loader: 'postcss-loader',
      options: {
        plugins: function() {
          return [require('autoprefixer')];
        }
      }
    },
    'sass-loader'
  ]
},
```
