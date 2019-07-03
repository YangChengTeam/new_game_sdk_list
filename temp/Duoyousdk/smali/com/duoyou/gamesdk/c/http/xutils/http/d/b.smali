.class Lcom/duoyou/gamesdk/c/http/xutils/http/d/b;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
        "<[B>;"
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
            "<[B>;"
        }
    .end annotation

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/b;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/b;-><init>()V

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)[B
    .locals 1

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a()V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->g()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/b;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)[B
    .locals 1

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)[B

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 0

    return-void
.end method

.method public synthetic c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)[B

    move-result-object v0

    return-object v0
.end method
