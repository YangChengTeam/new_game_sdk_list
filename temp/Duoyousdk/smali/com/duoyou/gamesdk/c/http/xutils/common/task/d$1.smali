.class Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->f()V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->e()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->f()V

    goto :goto_0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->f()V

    throw v0

    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->f()V

    goto :goto_0
.end method
