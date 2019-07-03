.class final Lcom/duoyou/gamesdk/c/http/xutils/common/task/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 4

    instance-of v0, p1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;

    check-cast p2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;

    iget-object v0, p1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->ordinal()I

    move-result v0

    iget-object v1, p2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;->a:J

    iget-wide v2, p2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/b;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a$2;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    return v0
.end method
