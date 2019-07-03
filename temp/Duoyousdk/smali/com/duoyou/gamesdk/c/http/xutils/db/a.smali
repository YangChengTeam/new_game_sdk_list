.class final Lcom/duoyou/gamesdk/c/http/xutils/db/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/Cursor;)Lcom/duoyou/gamesdk/c/http/xutils/db/c/d;
    .locals 5

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/db/c/d;

    invoke-direct {v1}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/d;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/duoyou/gamesdk/c/http/xutils/db/c/e",
            "<TT;>;",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/e;->h()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, p1, v1}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/a;->a(Ljava/lang/Object;Landroid/database/Cursor;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method
