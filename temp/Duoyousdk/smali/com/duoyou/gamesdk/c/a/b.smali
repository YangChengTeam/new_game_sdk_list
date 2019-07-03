.class public Lcom/duoyou/gamesdk/c/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Throwable;Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/duoyou/gamesdk/c/c/s;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logapp/putlog"

    invoke-static {v0, v1, p1}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method
