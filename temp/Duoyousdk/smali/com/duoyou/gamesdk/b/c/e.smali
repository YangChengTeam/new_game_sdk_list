.class public Lcom/duoyou/gamesdk/b/c/e;
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
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/duoyou/gamesdk/b/c/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoyou/gamesdk/b/c/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/duoyou/gamesdk/b/c/e;->d:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/b/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/duoyou/gamesdk/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/b/a;->a(Lcom/duoyou/gamesdk/b/b/a;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/e;->a:Landroid/content/Context;

    const-string v1, "is_auto_login_success"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/c/c/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/e;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/e;->a:Landroid/content/Context;

    const-string v1, "is_auto_login_success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/c/c/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/a/a;->b(Ljava/lang/String;)V

    return-void
.end method
