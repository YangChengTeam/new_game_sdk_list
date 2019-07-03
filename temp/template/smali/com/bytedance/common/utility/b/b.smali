.class public Lcom/bytedance/common/utility/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private d:Ljava/lang/Runnable;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 23
    new-instance v0, Lcom/bytedance/common/utility/b/a;

    const-string v1, "ThreadPlus-cached"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/common/utility/b/a;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bytedance/common/utility/b/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 24
    const/4 v0, 0x5

    new-instance v1, Lcom/bytedance/common/utility/b/a;

    const-string v2, "ThreadPlus-fixed"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/common/utility/b/a;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/bytedance/common/utility/b/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/bytedance/common/utility/b/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/common/utility/b/b;-><init>(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bytedance/common/utility/b/b;->d:Ljava/lang/Runnable;

    .line 33
    iput-boolean p3, p0, Lcom/bytedance/common/utility/b/b;->e:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/bytedance/common/utility/b/b;->e:Z

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    .line 57
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lcom/bytedance/common/utility/b/c;

    invoke-direct {v0, p0}, Lcom/bytedance/common/utility/b/c;-><init>(Lcom/bytedance/common/utility/b/b;)V

    .line 71
    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/common/utility/b/b;->e:Z

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/bytedance/common/utility/b/b;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 77
    :goto_1
    return-void

    .line 74
    :cond_0
    sget-object v1, Lcom/bytedance/common/utility/b/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bytedance/common/utility/b/b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/bytedance/common/utility/b/b;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    :cond_0
    return-void
.end method
