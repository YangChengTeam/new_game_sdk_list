.class public Lcom/game91/core/instant/virtualapk/utils/RunUtil;
.super Ljava/lang/Object;
.source "RunUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/core/instant/virtualapk/utils/RunUtil$InternalHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_RUN_ON_UITHREAD:I = 0x1

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 103
    const-class v1, Lcom/game91/core/instant/virtualapk/utils/RunUtil;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/game91/core/instant/virtualapk/utils/RunUtil$InternalHandler;

    invoke-direct {v0}, Lcom/game91/core/instant/virtualapk/utils/RunUtil$InternalHandler;-><init>()V

    sput-object v0, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->sHandler:Landroid/os/Handler;

    .line 107
    :cond_0
    sget-object v0, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->sHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getProcessNameByPid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    .line 80
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 81
    .local v2, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_1

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 84
    .local v0, "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p1, v4, :cond_0

    .line 85
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 90
    .end local v0    # "appProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getThreadPool()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {p0, v1}, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->getProcessNameByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->runOnUiThread(Ljava/lang/Runnable;Z)V

    .line 47
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;Z)V
    .locals 6
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "waitUtilDone"    # Z

    .prologue
    const/4 v5, 0x1

    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 56
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    .local v0, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    if-eqz p1, :cond_2

    .line 62
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .end local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 64
    .restart local v0    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;>;"
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/RunUtil;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 66
    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
