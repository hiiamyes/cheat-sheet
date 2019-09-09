# Google Analytics

```js
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-41378150-12"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-41378150-12');
</script>
```

## React

```js
{
  process.env.NODE_ENV === "production" && (
    <Helmet>
      <script
        async
        src="https://www.googletagmanager.com/gtag/js?id=UA-41378150-12"
      ></script>
      <script>
        {`
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'UA-41378150-12');
`}
      </script>
    </Helmet>
  );
}
```

# GTM - Google Tag Manager
