.class Lcom/duoyou/gamesdk/p/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/p/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/duoyou/gamesdk/p/a/a$1;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/p/a/a$1;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/a/a$1$1;->b:Lcom/duoyou/gamesdk/p/a/a$1;

    iput-object p2, p0, Lcom/duoyou/gamesdk/p/a/a$1$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/a/a$1$1;->b:Lcom/duoyou/gamesdk/p/a/a$1;

    iget-object v0, v0, Lcom/duoyou/gamesdk/p/a/a$1;->c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/duoyou/gamesdk/p/a/b;

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/a/a$1$1;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/p/a/b;-><init>(Ljava/util/Map;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "9000"

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/p/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "code"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "message"

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/a/a$1$1;->b:Lcom/duoyou/gamesdk/p/a/a$1;

    iget-object v2, v2, Lcom/duoyou/gamesdk/p/a/a$1;->d:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/p/a/a$1$1;->b:Lcom/duoyou/gamesdk/p/a/a$1;

    iget-object v0, v0, Lcom/duoyou/gamesdk/p/a/a$1;->c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    sget-object v2, Lcom/duoyou/gamesdk/openapi/PAY_TYPE;->ALIPAY:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/duoyou/gamesdk/openapi/OnPayCallback;->onPayCallback(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "code"

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/p/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/p/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/p/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/a/a$1$1;->b:Lcom/duoyou/gamesdk/p/a/a$1;

    iget-object v2, v2, Lcom/duoyou/gamesdk/p/a/a$1;->d:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/openapi/DyPayInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
