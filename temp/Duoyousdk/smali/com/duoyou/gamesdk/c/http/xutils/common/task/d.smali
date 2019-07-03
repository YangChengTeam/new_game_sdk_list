.class Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;
.super Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;,
        Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask",
        "<TResultType;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

.field static final b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;


# instance fields
.field private final c:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask",
            "<TResultType;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;-><init>(Z)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;

    return-void
.end method

.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask",
            "<TResultType;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;)V

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->e:Z

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->f:Z

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    invoke-virtual {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->h()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;

    :cond_0
    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->f:Z

    return v0
.end method


# virtual methods
.method protected varargs a(I[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    const v1, 0x3b9aca05

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$a;

    invoke-direct {v2, p0, p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$a;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1, p1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected a(Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;)V
    .locals 5

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;->CANCELLED:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;)V

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    const v1, 0x3b9aca06

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$a;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;->SUCCESS:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;)V

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    const v1, 0x3b9aca03

    invoke-virtual {v0, v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;Z)V
    .locals 5

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;->ERROR:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;)V

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    const v1, 0x3b9aca04

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$a;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected final c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->d()V

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->g()Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    move-result-object v1

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;

    invoke-direct {v2, p0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$1;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;)V

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()V
    .locals 2

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;->WAITING:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;)V

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    const v1, 0x3b9aca01

    invoke-virtual {v0, v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected e()V
    .locals 2

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;->STARTED:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask$State;)V

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    const v1, 0x3b9aca02

    invoke-virtual {v0, v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected f()V
    .locals 2

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->a:Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;

    const v1, 0x3b9aca07

    invoke-virtual {v0, v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final g()Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/AbsTask;->g()Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/d;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method
