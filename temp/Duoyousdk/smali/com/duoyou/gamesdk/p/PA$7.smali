.class Lcom/duoyou/gamesdk/p/PA$7;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/p/PA;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/e",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/p/PA;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/p/PA;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/p/PA$7;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "payString"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v2}, Lcom/duoyou/gamesdk/p/PA;->f(Lcom/duoyou/gamesdk/p/PA;)Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    move-result-object v2

    const-string v3, "orderNum"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->setOrderId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->g(Lcom/duoyou/gamesdk/p/PA;)Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    move-result-object v0

    sget-object v2, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->WEIXIN:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->h(Lcom/duoyou/gamesdk/p/PA;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2}, Lcom/duoyou/gamesdk/p/PA;->a(Lcom/duoyou/gamesdk/p/PA;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->h(Lcom/duoyou/gamesdk/p/PA;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "Referer"

    const-string v3, "https://api.aiduoyou.com/"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->i(Lcom/duoyou/gamesdk/p/PA;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v2}, Lcom/duoyou/gamesdk/p/PA;->h(Lcom/duoyou/gamesdk/p/PA;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/p/PA;->a(Lcom/duoyou/gamesdk/p/PA;Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->i(Lcom/duoyou/gamesdk/p/PA;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v2}, Lcom/duoyou/gamesdk/p/PA;->h(Lcom/duoyou/gamesdk/p/PA;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->g(Lcom/duoyou/gamesdk/p/PA;)Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    move-result-object v0

    sget-object v2, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->ALIPAY:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {}, Lcom/duoyou/gamesdk/p/a/a;->a()Lcom/duoyou/gamesdk/p/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    iget-object v3, p0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v3}, Lcom/duoyou/gamesdk/p/PA;->f(Lcom/duoyou/gamesdk/p/PA;)Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    move-result-object v3

    new-instance v4, Lcom/duoyou/gamesdk/p/PA$7$1;

    invoke-direct {v4, p0}, Lcom/duoyou/gamesdk/p/PA$7$1;-><init>(Lcom/duoyou/gamesdk/p/PA$7;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/duoyou/gamesdk/p/a/a;->a(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    return-void
.end method
