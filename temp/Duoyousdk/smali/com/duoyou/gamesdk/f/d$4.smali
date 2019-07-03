.class Lcom/duoyou/gamesdk/f/d$4;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/d;->e()V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/duoyou/gamesdk/f/d;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/d$4;->b:Lcom/duoyou/gamesdk/f/d;

    iput-object p2, p0, Lcom/duoyou/gamesdk/f/d$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/f/d$4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/d$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/b/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d$4;->b:Lcom/duoyou/gamesdk/f/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/b/a;->a(Lcom/duoyou/gamesdk/b/b/a;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d$4;->b:Lcom/duoyou/gamesdk/f/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/d;->d()V

    :goto_0
    return-void

    :cond_0
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
