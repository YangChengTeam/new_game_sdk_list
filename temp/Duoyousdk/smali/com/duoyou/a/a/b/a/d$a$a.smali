.class public final Lcom/duoyou/a/a/b/a/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/a/a/b/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/a/a/b/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/a/a/b/a/d$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/duoyou/a/a/b/a/d$a;)V
    .locals 1

    iput-object p1, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/duoyou/a/a/b/a/b$a;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->c:Z

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/duoyou/a/a/b/a/b$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;F)Lcom/duoyou/a/a/b/a/b$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;I)Lcom/duoyou/a/a/b/a/b$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;J)Lcom/duoyou/a/a/b/a/b$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/duoyou/a/a/b/a/b$a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/duoyou/a/a/b/a/b$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/duoyou/a/a/b/a/d;->a()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v3, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    invoke-static {v3}, Lcom/duoyou/a/a/b/a/d$a;->a(Lcom/duoyou/a/a/b/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    invoke-static {v3}, Lcom/duoyou/a/a/b/a/d$a;->a(Lcom/duoyou/a/a/b/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v3, v0

    move-object v4, v1

    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    invoke-static {v0}, Lcom/duoyou/a/a/b/a/d$a;->b(Lcom/duoyou/a/a/b/a/d$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->c:Z

    :cond_1
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    invoke-static {v0}, Lcom/duoyou/a/a/b/a/d$a;->c(Lcom/duoyou/a/a/b/a/d$a;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoyou/a/a/b/a/d$a;->a(Z)V

    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-gez v2, :cond_7

    :cond_4
    return v6

    :cond_5
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_6

    iget-object v0, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    invoke-static {v0}, Lcom/duoyou/a/a/b/a/d$a;->b(Lcom/duoyou/a/a/b/a/d$a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-eqz v2, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_6
    :try_start_5
    iget-object v7, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    invoke-static {v7}, Lcom/duoyou/a/a/b/a/d$a;->b(Lcom/duoyou/a/a/b/a/d$a;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_7
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/a/a/b/a/b$b;

    if-eqz v0, :cond_8

    iget-object v7, p0, Lcom/duoyou/a/a/b/a/d$a$a;->a:Lcom/duoyou/a/a/b/a/d$a;

    invoke-interface {v0, v7, v1}, Lcom/duoyou/a/a/b/a/b$b;->a(Lcom/duoyou/a/a/b/a/b;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_0
.end method