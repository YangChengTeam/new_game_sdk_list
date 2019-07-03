.class public Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a$1;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a$1;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a$2;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a$2;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->c:Ljava/util/Comparator;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a$3;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a$3;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->d:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 9

    const/16 v3, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->c:Ljava/util/Comparator;

    :goto_0
    invoke-direct {v7, v3, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->b:Ljava/util/concurrent/ThreadFactory;

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->d:Ljava/util/Comparator;

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    instance-of v0, p1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;->a:J

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
