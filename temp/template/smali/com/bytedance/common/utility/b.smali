.class Lcom/bytedance/common/utility/b;
.super Lcom/bytedance/common/utility/NetworkClient;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/bytedance/common/utility/NetworkClient;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/common/utility/NetworkClient$a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/common/utility/CommonHttpException;
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/common/utility/NetworkUtils;->a(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    instance-of v0, v1, Lcom/bytedance/common/utility/HttpResponseException;

    if-eqz v0, :cond_0

    .line 105
    new-instance v2, Lcom/bytedance/common/utility/CommonHttpException;

    move-object v0, v1

    check-cast v0, Lcom/bytedance/common/utility/HttpResponseException;

    invoke-virtual {v0}, Lcom/bytedance/common/utility/HttpResponseException;->getStatusCode()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/bytedance/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 107
    :cond_0
    new-instance v0, Lcom/bytedance/common/utility/CommonHttpException;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/bytedance/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public post(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/bytedance/common/utility/NetworkClient$a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/common/utility/CommonHttpException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/bytedance/common/utility/CommonHttpException;

    const/4 v1, 0x0

    const-string v2, "not implemented"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public post(Ljava/lang/String;[BLjava/util/Map;Lcom/bytedance/common/utility/NetworkClient$a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/common/utility/CommonHttpException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-static {p1, p2, p3, v1, v2}, Lcom/bytedance/common/utility/NetworkUtils;->a(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;Z)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    instance-of v0, v1, Lcom/bytedance/common/utility/HttpResponseException;

    if-eqz v0, :cond_0

    .line 125
    new-instance v2, Lcom/bytedance/common/utility/CommonHttpException;

    move-object v0, v1

    check-cast v0, Lcom/bytedance/common/utility/HttpResponseException;

    invoke-virtual {v0}, Lcom/bytedance/common/utility/HttpResponseException;->getStatusCode()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/bytedance/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 127
    :cond_0
    new-instance v0, Lcom/bytedance/common/utility/CommonHttpException;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/bytedance/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method
