.class public Lcom/duoyou/gamesdk/c/c/a/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Lcom/duoyou/gamesdk/c/c/a/e;


# direct methods
.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/c/a/b;->a:Lcom/duoyou/gamesdk/c/c/a/e;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/a/b;->a()V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/c/a/b;->a:Lcom/duoyou/gamesdk/c/c/a/e;

    invoke-virtual {v0, p0}, Lcom/duoyou/gamesdk/c/c/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method protected static a()V
    .locals 3

    sget-object v0, Lcom/duoyou/gamesdk/c/c/a/b;->a:Lcom/duoyou/gamesdk/c/c/a/e;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/c/a/e;

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/duoyou/gamesdk/c/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/duoyou/gamesdk/c/c/a/b;->a:Lcom/duoyou/gamesdk/c/c/a/e;

    :cond_0
    return-void
.end method

.method protected static a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HMACSHA256"

    invoke-static {p0, v0, v1}, Lcom/duoyou/gamesdk/c/c/a/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static b()Ljava/lang/String;
    .locals 1

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDymP7AshSZpfXMKbI9EXYIqTBN1u5aI0dIx2zjXHPhehAfO/FT4rzfSDDbwEvarlBvIvxQE+Zi7kMam5nFohay/dsw5jYlRpNG7I6G6GzgnghjH/7d7F3InVQnhEwL1p7zsmSv8xiSZgTIpSBmIsnVRRYghdNt8jVVYTFgQuXmRwIDAQAB"

    return-object v0
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/f;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method protected static c()Ljava/lang/String;
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsBLrIF6VTJhdXpZL05101nxERAG9uEam9lARNR1fJMKh4lPxRG4VbCsI0obx3jvpEQOu0T54GkHrVWgita4Ip0VwLkgpB1+uDmKT0nUKsFz0DSXkb3qD035nwlUhrO3N6ECyxlWp+tmcD+KbhqdsQYavtkmTwMdFamJF0e9avrZWg3b/OposOkQCm1/4kGrB+RcSweaKzoZl7CGZgjiokS8uoND4EfyEqQYJQpj5rgaTx9JHfR305ZUPpAkqoZbtQAsKq6fdssh4jrGf0FbAdmktClpSkL4Q2LCvhoiGllcb+adXd/hdjXTbaZdodY/AMsmCDyk/sajnLUk8c19IpwIDAQAB"

    return-object v0
.end method
