.class public Lcom/duoyou/gamesdk/c/http/d;
.super Lcom/duoyou/gamesdk/c/c/a/b;


# direct methods
.method public static a(Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/duoyou/gamesdk/c/http/d;->a(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/duoyou/gamesdk/c/http/e;",
            ")",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;"
        }
    .end annotation

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;-><init>()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Ljava/net/Proxy;)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/http/d;->a(Ljava/util/Map;Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "json"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u5730\u5740 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **** \u8bf7\u6c42\u4f20\u53c2 header = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "json"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u5730\u5740 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " **** \u8bf7\u6c42\u4f20\u53c2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c;->d()Lcom/duoyou/gamesdk/c/http/xutils/b;

    move-result-object v1

    new-instance v2, Lcom/duoyou/gamesdk/c/http/f;

    invoke-direct {v2, p2}, Lcom/duoyou/gamesdk/c/http/f;-><init>(Lcom/duoyou/gamesdk/c/http/e;)V

    invoke-interface {v1, v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 0

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->a(Landroid/app/Application;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/e;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "uuidx"

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duoyou123456"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/http/d;->a(Ljava/util/Map;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "headInfo"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "uuidx"

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "duoyou123456"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/http/d;->a(Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "json"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6c42\u5730\u5740 \u660e\u6587 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/duoyou/gamesdk/c/http/e;",
            ")",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;"
        }
    .end annotation

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;-><init>()V

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Ljava/net/Proxy;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b(Ljava/lang/String;)V

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->POST:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    invoke-virtual {v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/http/d;->a(Ljava/util/Map;Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "json"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u5730\u5740 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **** \u8bf7\u6c42\u4f20\u53c2 header = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "json"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u5730\u5740 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " **** \u8bf7\u6c42\u4f20\u53c2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c;->d()Lcom/duoyou/gamesdk/c/http/xutils/b;

    move-result-object v1

    new-instance v2, Lcom/duoyou/gamesdk/c/http/f;

    invoke-direct {v2, p2}, Lcom/duoyou/gamesdk/c/http/f;-><init>(Lcom/duoyou/gamesdk/c/http/e;)V

    invoke-interface {v1, v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/b;->b(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$c;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
