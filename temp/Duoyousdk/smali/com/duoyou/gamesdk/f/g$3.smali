.class Lcom/duoyou/gamesdk/f/g$3;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/g;->g()V
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
.field final synthetic a:Lcom/duoyou/gamesdk/b/a/a;

.field final synthetic b:Lcom/duoyou/gamesdk/f/g;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/g;Lcom/duoyou/gamesdk/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/g$3;->b:Lcom/duoyou/gamesdk/f/g;

    iput-object p2, p0, Lcom/duoyou/gamesdk/f/g$3;->a:Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/f/g$3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/g$3;->a:Lcom/duoyou/gamesdk/b/a/a;

    new-instance v1, Lcom/duoyou/gamesdk/f/g$3$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/g$3$1;-><init>(Lcom/duoyou/gamesdk/f/g$3;)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/a/a;->a(Lcom/duoyou/gamesdk/c/http/e;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    return-void
.end method
