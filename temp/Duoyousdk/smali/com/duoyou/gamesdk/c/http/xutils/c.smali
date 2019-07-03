.class public final Lcom/duoyou/gamesdk/c/http/xutils/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/c/http/xutils/c$b;,
        Lcom/duoyou/gamesdk/c/http/xutils/c$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)Lcom/duoyou/gamesdk/c/http/xutils/a;
    .locals 1

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->a()Z

    move-result v0

    return v0
.end method

.method public static b()Landroid/app/Application;
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->b()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.android.layoutlib.bridge.impl.RenderAction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCurrentContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/c$b;

    invoke-direct {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/c$b;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->b(Landroid/app/Application;)Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->b()Landroid/app/Application;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please invoke x.Ext.init(app) on Application#onCreate() and register your Application in manifest."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c()Lcom/duoyou/gamesdk/c/http/xutils/common/a;
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->c()Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/duoyou/gamesdk/c/http/xutils/b;
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->d()Lcom/duoyou/gamesdk/c/http/xutils/b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/http/b;->a()V

    :cond_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->d()Lcom/duoyou/gamesdk/c/http/xutils/b;

    move-result-object v0

    return-object v0
.end method
