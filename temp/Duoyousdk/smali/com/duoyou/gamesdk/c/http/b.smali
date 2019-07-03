.class public Lcom/duoyou/gamesdk/c/http/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/b/a/c;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "longitude"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "latitude"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    const-string v2, "userKey"

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoyou/gamesdk/b/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    const-string v2, "loginType"

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoyou/gamesdk/b/b/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    const-string v3, "imei"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoyou/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    const-string v3, "utdId"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "gameName"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gameName"

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v1, "gamePackageName"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gamePackageName"

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v1, "dpi"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/b/a/b;->a()I

    move-result v1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/b/a/b;->b()I

    move-result v2

    const-string v3, "dpi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v1, "idKey"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/i;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "idKey"

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string v1, "hasSim"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "hasSim"

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string v1, "networkType"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "networkType"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/n;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    const-string v1, "os"

    const-string v2, "Android"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "bootTime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "systemVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "systemModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "deviceBrand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "sdkVersion"

    const-string v2, "2.0.3"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "dySdkChannel"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method
