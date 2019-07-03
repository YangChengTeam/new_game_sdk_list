.class Lcom/duoyou/gamesdk/a/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/a/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/a/a$1$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/a/a$1$1;-><init>(Lcom/duoyou/gamesdk/a/a$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
