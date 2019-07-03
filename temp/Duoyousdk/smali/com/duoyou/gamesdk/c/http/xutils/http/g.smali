.class final Lcom/duoyou/gamesdk/c/http/xutils/http/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;


# instance fields
.field private final a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;


# direct methods
.method public constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
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

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    invoke-interface {v0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/Object;)V
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

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/Throwable;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/Throwable;Z)V
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

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
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

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;->b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
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

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    invoke-interface {v0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;->b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/Object;)V
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

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;->b(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
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

.method public c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;->c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
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
