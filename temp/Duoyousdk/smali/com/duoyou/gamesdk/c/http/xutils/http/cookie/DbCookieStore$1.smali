.class Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->trimSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->access$000(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-static {v2, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->access$002(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;J)J

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->access$100(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v0

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    const-string v2, "expiry"

    const-string v3, "<"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v2

    const-string v3, "expiry"

    const-string v4, "!="

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Class;Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->access$100(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v0

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-interface {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/a;->c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->h()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x1392

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->access$100(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v1

    const-class v2, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;

    invoke-interface {v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v1

    const-string v2, "expiry"

    const-string v3, "!="

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v1

    const-string v2, "expiry"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a(Ljava/lang/String;Z)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v1

    add-int/lit16 v0, v0, -0x1388

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a(I)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;->access$100(Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/DbCookieStore;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/a;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
