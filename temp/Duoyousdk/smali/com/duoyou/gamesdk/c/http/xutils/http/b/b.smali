.class public Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;
.super Ljava/lang/Object;


# static fields
.field protected static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/net/MalformedURLException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/net/URISyntaxException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/net/NoRouteToHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/net/PortUnreachableException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/net/ProtocolException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Lorg/json/JSONException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    const-class v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->a:I

    return-void
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;Ljava/lang/Throwable;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->a:I

    if-le p3, v1, :cond_0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->c(Ljava/lang/String;)V

    const-string v1, "The Max Retry times has been reached!"

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->c(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->o()Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b()Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->permitsRetry(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->c(Ljava/lang/String;)V

    const-string v1, "The Request Method can not be retried."

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;->b:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->c(Ljava/lang/String;)V

    const-string v1, "The Exception can not be retried."

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
