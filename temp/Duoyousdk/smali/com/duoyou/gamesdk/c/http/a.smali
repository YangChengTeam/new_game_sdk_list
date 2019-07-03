.class public Lcom/duoyou/gamesdk/c/http/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x1f4

    const/16 v2, 0x190

    if-nez p0, :cond_0

    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;->getCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_3

    if-ge v0, v2, :cond_3

    :try_start_1
    const-string v0, "\u670d\u52a1\u5668\u91cd\u5b9a\u5411"

    goto :goto_0

    :cond_3
    if-lt v0, v2, :cond_4

    if-ge v0, v3, :cond_4

    const-string v0, "\u670d\u52a1\u5668\u627e\u4e0d\u5230\u8bf7\u6c42404"

    goto :goto_0

    :cond_4
    if-lt v0, v3, :cond_1

    const-string v0, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/a;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/a;->a(Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_2

    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\u6216\u57df\u540d\u65e0\u6cd5\u8fde\u63a5"

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_3

    const-string v0, "\u670d\u52a1\u5668\u4e0d\u5b58\u5728"

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_4

    const-string v0, "\u7a7a\u6307\u9488"

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_5

    const-string v0, "\u8fde\u63a5\u8d85\u65f6"

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "-100"

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_2

    const-string v0, "701"

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_3

    const-string v0, "702"

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_4

    const-string v0, "703"

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_5

    const-string v0, "704"

    goto :goto_0

    :cond_5
    const-string v0, "-100"

    goto :goto_0
.end method

.method public static d(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "code"

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/a;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "message"

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/a;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
