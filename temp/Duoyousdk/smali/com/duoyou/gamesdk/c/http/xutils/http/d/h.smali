.class public final Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    const-class v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    const-class v1, Lorg/json/JSONArray;

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/d/e;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/d/j;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/j;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    const-class v1, Ljava/io/File;

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    const-class v1, [B

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/d/b;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/a;-><init>()V

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/d;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/d;-><init>()V

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;Lcom/duoyou/gamesdk/c/http/xutils/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/e;",
            ")",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/i;-><init>(Ljava/lang/reflect/Type;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->a()Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    move-result-object v0

    goto :goto_0
.end method
