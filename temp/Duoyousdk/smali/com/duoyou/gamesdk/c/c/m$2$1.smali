.class Lcom/duoyou/gamesdk/c/c/m$2$1;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/c/m$2;->run()V
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
.field final synthetic a:Lcom/duoyou/gamesdk/c/c/m$2;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/c/m$2;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/c/m$2$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/c/m$2;->c:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/m;->b(Lcom/duoyou/gamesdk/c/c/m;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/c/m$2;->a:Lcom/duoyou/gamesdk/b/b/b;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/c/m$2;->a:Lcom/duoyou/gamesdk/b/b/b;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/b/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/duoyou/gamesdk/b/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/b/a;->a(Lcom/duoyou/gamesdk/b/b/a;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    const-string v1, "is_auto_login_success"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/c/c/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hi\uff0c<font color=\'#31d6f7\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/c/m$2;->a:Lcom/duoyou/gamesdk/b/b/b;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font> \u6b22\u8fce\u56de\u6765\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/c/m$2;->c:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/m;->d(Lcom/duoyou/gamesdk/c/c/m;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/duoyou/gamesdk/c/c/m$2$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/duoyou/gamesdk/c/c/m$2$1$1;-><init>(Lcom/duoyou/gamesdk/c/c/m$2$1;Landroid/app/Dialog;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    const-string v1, "is_auto_login_success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/c/c/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m$2$1;->a:Lcom/duoyou/gamesdk/c/c/m$2;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/c/m$2;->c:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/m;->b(Lcom/duoyou/gamesdk/c/c/m;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/a/a;->b(Ljava/lang/String;)V

    return-void
.end method
