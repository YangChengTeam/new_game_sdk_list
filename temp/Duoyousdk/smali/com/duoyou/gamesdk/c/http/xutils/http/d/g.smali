.class public abstract Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

.field protected b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    return-void
.end method

.method protected a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;-><init>()V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c(J)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a(J)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->k()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a(Ljava/util/Date;)V

    invoke-virtual {v0, p2}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->o()Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    return-void
.end method

.method public abstract b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoyou/gamesdk/c/http/xutils/cache/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
.end method

.method public abstract c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;",
            ")TT;"
        }
    .end annotation
.end method
