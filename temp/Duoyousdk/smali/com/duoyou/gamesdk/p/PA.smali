.class public final Lcom/duoyou/gamesdk/p/PA;
.super Lcom/duoyou/gamesdk/c/base/BaseActivity;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

.field private n:Landroid/webkit/WebView;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

.field private r:Landroid/os/Handler;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/base/BaseActivity;-><init>()V

    sget-object v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->ALIPAY:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/p/PA;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/p/PA;Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/duoyou/gamesdk/p/PA;->a(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {p3}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/p/PA;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/PA;->o:Ljava/util/Map;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "\u652f\u4ed8\u4fe1\u606f\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    const-string v0, "\u652f\u4ed8\u91d1\u989d\u4e0d\u80fd\u5c0f\u4e8e\u96f6"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoyou/gamesdk/p/PA;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "DY_PAY_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
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

.method private a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->r:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->r:Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/p/PA;->a()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8ba2\u5355\u67e5\u8be2\u4e2d..."

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->r:Landroid/os/Handler;

    new-instance v1, Lcom/duoyou/gamesdk/p/PA$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/duoyou/gamesdk/p/PA$8;-><init>(Lcom/duoyou/gamesdk/p/PA;Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/p/PA;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/p/PA;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/p/PA;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/p/PA;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/p/PA;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DY_PAY_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/p/PA;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DY_PAY_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/p/PA;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/p/PA;->s:Z

    return p1
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/p/PA;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 2

    const-string v0, "close_iv"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->a:Landroid/widget/ImageView;

    const-string v0, "wechat_checkbox"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->b:Landroid/widget/ImageView;

    const-string v0, "alipay_checkbox"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->c:Landroid/widget/ImageView;

    const-string v0, "pay_now_tv"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->d:Landroid/widget/TextView;

    const-string v0, "parent_layout"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->e:Landroid/view/View;

    const-string v0, "wechat_pay_layout"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->f:Landroid/view/View;

    const-string v0, "alipay_pay_layout"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->g:Landroid/view/View;

    const-string v0, "other_pay_layout"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->h:Landroid/view/View;

    const-string v0, "game_name_tv"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->i:Landroid/widget/TextView;

    const-string v0, "pay_amount_tv"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->k:Landroid/widget/TextView;

    const-string v0, "game_icon_iv"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->l:Landroid/widget/ImageView;

    const-string v0, "product_tv"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->f:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/p/PA$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/p/PA$1;-><init>(Lcom/duoyou/gamesdk/p/PA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->g:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/p/PA$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/p/PA$2;-><init>(Lcom/duoyou/gamesdk/p/PA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->h:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/p/PA$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/p/PA$3;-><init>(Lcom/duoyou/gamesdk/p/PA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/p/PA$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/p/PA$4;-><init>(Lcom/duoyou/gamesdk/p/PA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/p/PA$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/p/PA$5;-><init>(Lcom/duoyou/gamesdk/p/PA;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/p/PA;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->g:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getProductInro()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getProductInro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/a;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/p/PA;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/p/PA;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/c;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/a;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5145\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getAmount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/a;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private e()V
    .locals 2

    const-string v0, "web_view"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->n:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->n:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->n:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->n:Landroid/webkit/WebView;

    new-instance v1, Lcom/duoyou/gamesdk/p/PA$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/p/PA$6;-><init>(Lcom/duoyou/gamesdk/p/PA;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/p/PA;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/p/PA;->f()V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/p/PA;)Lcom/duoyou/gamesdk/openapi/DyPayInfo;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u81f3\u5c11\u9009\u62e9\u4e00\u79cd\u652f\u4ed8\u65b9\u5f0f"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->WEIXIN:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    if-nez v0, :cond_2

    const-string v0, "\u652f\u4ed8\u4fe1\u606f\u4e3a\u7a7a\uff0c\u8bf7\u5173\u95ed\u91cd\u8bd5"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    sget-object v1, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->WEIXIN:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getAmount()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    const-string v0, "\u5fae\u4fe1\u652f\u4ed8\u81f3\u5c111\u5143\u8d77\u4ed8"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->ALIPAY:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iput-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    goto :goto_1

    :cond_4
    const-string v0, "\u6b63\u5728\u8bf7\u6c42\u591a\u6e38\u5b89\u5168\u652f\u4ed8..."

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/duoyou/gamesdk/p/b/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/p/b/a;-><init>()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA;->m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    new-instance v3, Lcom/duoyou/gamesdk/p/PA$7;

    invoke-direct {v3, p0}, Lcom/duoyou/gamesdk/p/PA$7;-><init>(Lcom/duoyou/gamesdk/p/PA;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/p/b/a;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Lcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/p/PA;)Lcom/duoyou/gamesdk/openapi/PAY_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    return-object v0
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/p/PA;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->o:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/duoyou/gamesdk/p/PA;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->n:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/duoyou/gamesdk/p/PA;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "dy_pay_activity_new"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/p/PA;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/p/PA;->c()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/p/PA;->e()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/p/PA;->b()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/p/PA;->d()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/p/PA;->s:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA;->m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/p/PA;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/p/PA;->b()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/p/PA;->d()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->onResume()V

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/p/PA;->s:Z

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/p/PA;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/p/PA;->p:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA;->m:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA;->q:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/duoyou/gamesdk/p/PA;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
