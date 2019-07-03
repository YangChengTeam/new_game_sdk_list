.class public final Lcom/duoyou/gamesdk/c/ui/WebViewActivity;
.super Lcom/duoyou/gamesdk/c/base/BaseActivity;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/c/ui/WebViewActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "webUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    const-wide/32 v2, 0xa00000

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->b:Landroid/widget/TextView;

    const-string v0, "web_view"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a:Landroid/webkit/WebView;

    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$1;-><init>(Lcom/duoyou/gamesdk/c/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$2;-><init>(Lcom/duoyou/gamesdk/c/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity$3;-><init>(Lcom/duoyou/gamesdk/c/ui/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "dy_webview_activity"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "webUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/ui/WebViewActivity;->b()V

    return-void
.end method
