.class public final Lcom/duoyou/gamesdk/c/http/xutils/common/task/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/common/a;


# static fields
.field private static volatile a:Lcom/duoyou/gamesdk/c/http/xutils/common/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/c;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/c;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/c$a;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;)Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask",
            "<TT;>;)",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :cond_0
    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;

    invoke-direct {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;)V

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
