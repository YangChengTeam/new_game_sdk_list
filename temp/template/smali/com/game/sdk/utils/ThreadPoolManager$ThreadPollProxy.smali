.class public Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/utils/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadPollProxy"
.end annotation


# instance fields
.field private corePoolSize:I

.field private keepAliveTime:J

.field private maximumPoolSize:I

.field private poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->corePoolSize:I

    .line 32
    iput p2, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->maximumPoolSize:I

    .line 33
    iput-wide p3, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->keepAliveTime:J

    .line 34
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    iget v2, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->corePoolSize:I

    .line 43
    iget v3, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->maximumPoolSize:I

    .line 45
    iget-wide v4, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->keepAliveTime:J

    .line 47
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 39
    iput-object v1, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method
