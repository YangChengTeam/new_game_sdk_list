.class Lcom/duoyou/gamesdk/p/PA$8$1;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/p/PA$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/e",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/p/PA$8;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/p/PA$8;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/PA$8$1;->a:Lcom/duoyou/gamesdk/p/PA$8;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/p/PA$8$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "PayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$8$1;->a:Lcom/duoyou/gamesdk/p/PA$8;

    iget-object v0, v0, Lcom/duoyou/gamesdk/p/PA$8;->c:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoyou/gamesdk/p/PA$8$1;->a:Lcom/duoyou/gamesdk/p/PA$8;

    iget-object v3, v3, Lcom/duoyou/gamesdk/p/PA$8;->c:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v3}, Lcom/duoyou/gamesdk/p/PA;->f(Lcom/duoyou/gamesdk/p/PA;)Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/p/PA;->a(Lcom/duoyou/gamesdk/p/PA;Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA$8$1;->a:Lcom/duoyou/gamesdk/p/PA$8;

    iget-object v1, v1, Lcom/duoyou/gamesdk/p/PA$8;->c:Lcom/duoyou/gamesdk/p/PA;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/p/PA;->b(Lcom/duoyou/gamesdk/p/PA;Z)Z

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA$8$1;->a:Lcom/duoyou/gamesdk/p/PA$8;

    iget-object v2, v2, Lcom/duoyou/gamesdk/p/PA$8;->a:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    invoke-virtual {v1, v2, v0}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$8$1;->a:Lcom/duoyou/gamesdk/p/PA$8;

    iget-object v0, v0, Lcom/duoyou/gamesdk/p/PA$8;->c:Lcom/duoyou/gamesdk/p/PA;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/p/PA;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 3

    const-string v0, "PayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    return-void
.end method
