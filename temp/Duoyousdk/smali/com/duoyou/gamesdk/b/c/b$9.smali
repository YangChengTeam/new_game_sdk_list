.class Lcom/duoyou/gamesdk/b/c/b$9;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/b;->g()V
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/duoyou/gamesdk/b/c/b;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/b$9;->c:Lcom/duoyou/gamesdk/b/c/b;

    iput-object p2, p0, Lcom/duoyou/gamesdk/b/c/b$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoyou/gamesdk/b/c/b$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/b/c/b$9;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$9;->c:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/b$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/b$9;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/duoyou/gamesdk/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$9;->c:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->t(Lcom/duoyou/gamesdk/b/c/b;)Lcom/duoyou/gamesdk/b/c/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$9;->c:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->t(Lcom/duoyou/gamesdk/b/c/b;)Lcom/duoyou/gamesdk/b/c/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/b$9;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/b$9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/b/c/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$9;->c:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/b;->dismiss()V

    :cond_1
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    return-void
.end method
