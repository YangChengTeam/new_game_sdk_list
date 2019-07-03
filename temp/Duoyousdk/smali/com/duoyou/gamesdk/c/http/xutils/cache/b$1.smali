.class Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

.field final synthetic b:Lcom/duoyou/gamesdk/c/http/xutils/cache/b;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;->b:Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->f()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b(J)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c(J)V

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;->b:Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lastAccess"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
