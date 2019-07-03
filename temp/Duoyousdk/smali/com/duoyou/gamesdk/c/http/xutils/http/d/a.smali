.class Lcom/duoyou/gamesdk/c/http/xutils/http/d/a;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/a;-><init>()V

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Boolean;
    .locals 2

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a()V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->i()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/a;->a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 0

    return-void
.end method

.method public synthetic c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/a;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
