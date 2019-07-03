.class Lcom/duoyou/gamesdk/c/c/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/c/m;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/c/c/m;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/c/m$1;->a:Lcom/duoyou/gamesdk/c/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$1;->a:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/m;->a(Lcom/duoyou/gamesdk/c/c/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$1;->a:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/m;->b(Lcom/duoyou/gamesdk/c/c/m;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$1;->a:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/m;->c(Lcom/duoyou/gamesdk/c/c/m;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$1;->a:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/m;->d(Lcom/duoyou/gamesdk/c/c/m;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m$1;->a:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/m;->c(Lcom/duoyou/gamesdk/c/c/m;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$1;->a:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/m;->e(Lcom/duoyou/gamesdk/c/c/m;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$1;->a:Lcom/duoyou/gamesdk/c/c/m;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/m;->e(Lcom/duoyou/gamesdk/c/c/m;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;->a()V

    :cond_1
    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/a/a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
