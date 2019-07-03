.class Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:J

.field public final b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->DEFAULT:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    :cond_0
    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
