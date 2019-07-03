.class public Lcom/duoyou/gamesdk/c/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/b;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "member/equip"

    new-instance v2, Lcom/duoyou/gamesdk/c/a/a$1;

    invoke-direct {v2, p0}, Lcom/duoyou/gamesdk/c/a/a$1;-><init>(Lcom/duoyou/gamesdk/c/a/a;)V

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/d;->b(Ljava/util/Map;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method
