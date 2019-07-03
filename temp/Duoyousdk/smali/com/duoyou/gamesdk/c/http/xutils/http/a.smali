.class abstract Lcom/duoyou/gamesdk/c/http/xutils/http/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;,
        Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->d:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->j:Ljava/util/List;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v2, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    iget-object v6, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    :goto_2
    iget-object v7, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->b:Ljava/lang/Object;

    invoke-static {v7}, Lcom/duoyou/gamesdk/c/http/xutils/http/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    instance-of v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v6, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    return-void
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->permitsRequestBody(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    if-nez p1, :cond_1

    iget-object v2, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    if-nez p1, :cond_4

    iget-object v2, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_3

    iget-object v2, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->permitsRequestBody(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    instance-of v1, p2, Ljava/io/File;

    if-nez v1, :cond_3

    instance-of v1, p2, Ljava/io/InputStream;

    if-nez v1, :cond_3

    instance-of v1, p2, [B

    if-eqz v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->j:Ljava/util/List;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    invoke-direct {v1, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v1, p2, Ljava/lang/Iterable;

    if-eqz v1, :cond_5

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;

    invoke-direct {v3, p1, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    instance-of v1, p2, Lorg/json/JSONArray;

    if-eqz v1, :cond_6

    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    invoke-direct {v1, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p2, Ljava/lang/Iterable;

    if-eqz v1, :cond_a

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;

    invoke-direct {v3, p1, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    invoke-direct {v1, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;

    const/4 v0, 0x1

    invoke-direct {v1, p1, p2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->g:Ljava/util/List;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/a$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    invoke-direct {v1, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->f()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public e()Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->f()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->f:Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_3
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->d:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;->c()Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    instance-of v3, v0, Ljava/io/File;

    if-eqz v3, :cond_4

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/b;

    check-cast v0, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/b;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v3, v0, Ljava/io/InputStream;

    if-eqz v3, :cond_5

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v2, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v3, v0, [B

    if-eqz v3, :cond_6

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_7

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Some params will be ignored for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->d:Z

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/h;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/h;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move-object v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->f()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    iget-object v3, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->b:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->permitsRequestBody(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    iget-object v3, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->b:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
