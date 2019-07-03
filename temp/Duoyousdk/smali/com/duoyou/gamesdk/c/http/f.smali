.class public Lcom/duoyou/gamesdk/c/http/f;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/e",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/duoyou/gamesdk/c/http/e;


# direct methods
.method public constructor <init>(Lcom/duoyou/gamesdk/c/http/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/e;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/http/e;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "json"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u5730\u5740\u8fd4\u56de = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/http/e;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 3

    const-string v0, "json"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u5730\u5740\u8fd4\u56de = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/f;->a:Lcom/duoyou/gamesdk/c/http/e;

    invoke-virtual {v0, p1, p2}, Lcom/duoyou/gamesdk/c/http/e;->a(Ljava/lang/Throwable;Z)V

    :cond_0
    return-void
.end method
