.class Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;-><init>()V

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Lorg/json/JSONObject;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a()V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->g()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->d:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
