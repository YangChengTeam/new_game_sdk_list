.class public Lcom/duoyou/gamesdk/c/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoyou/gamesdk/c/b/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/b/a;->a:Lcom/duoyou/gamesdk/c/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/b/a;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/b/a;->a:Lcom/duoyou/gamesdk/c/b/a;

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/b/a;->a:Lcom/duoyou/gamesdk/c/b/a;

    return-object v0
.end method

.method private a(Lcom/duoyou/gamesdk/b/b/b;Z)V
    .locals 10

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "password"

    invoke-virtual {v9, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v1, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v9, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const-string v1, "userId"

    invoke-virtual {v9, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isReal"

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phoneNum"

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loginType"

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/b;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_info"

    const/4 v2, 0x0

    const-string v3, "userId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "password"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_3
    const-string v2, "user_info"

    const-string v3, "userId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v0, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v2, "user_info"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/duoyou/gamesdk/b/b/b;
    .locals 2

    const-string v0, " updateTime DESC limit 1 offset 0 "

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/b/b/b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/b/b/b;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/b;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v7, " updateTime DESC "

    :goto_2
    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "user_info"

    const/4 v2, 0x0

    const-string v3, "appId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "userId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "username"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "phoneNum"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isReal"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "loginType"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/duoyou/gamesdk/b/b/b;

    invoke-direct {v7}, Lcom/duoyou/gamesdk/b/b/b;-><init>()V

    invoke-virtual {v7, v2}, Lcom/duoyou/gamesdk/b/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/duoyou/gamesdk/b/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/duoyou/gamesdk/b/b/b;->c(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/duoyou/gamesdk/b/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/duoyou/gamesdk/b/b/b;->f(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/duoyou/gamesdk/b/b/b;->g(Ljava/lang/String;)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    move-object v0, v8

    goto/16 :goto_0

    :cond_4
    move-object v7, p1

    goto/16 :goto_2

    :cond_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_6
    if-eqz v1, :cond_6

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_7
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v1, v9

    goto :goto_4
.end method

.method public a(Lcom/duoyou/gamesdk/b/b/a;)V
    .locals 2

    new-instance v0, Lcom/duoyou/gamesdk/b/b/b;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/b/b/b;-><init>()V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/b/b;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/b/b;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/b/b;->g(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/duoyou/gamesdk/c/b/a;->a(Lcom/duoyou/gamesdk/b/b/b;Z)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/b/c;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/b/c;->a(Lcom/duoyou/gamesdk/b/b/b;)V

    return-void
.end method

.method public a(Lcom/duoyou/gamesdk/b/b/b;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/b/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/b/b;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "user_info"

    const-string v3, "userId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/c;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/b/c;->b(Lcom/duoyou/gamesdk/b/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/duoyou/gamesdk/c/c/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/b/b;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_info"

    const-string v4, "phoneNum=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/c;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/duoyou/gamesdk/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/b/b/b;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/b;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v7, " updateTime DESC "

    :goto_2
    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "user_info"

    const/4 v2, 0x0

    const-string v3, "appId=? and (phoneNum is not null) and phoneNum<>\'\'"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "userId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "username"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "phoneNum"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "isReal"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "loginType"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/duoyou/gamesdk/c/c/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/duoyou/gamesdk/b/b/b;

    invoke-direct {v7}, Lcom/duoyou/gamesdk/b/b/b;-><init>()V

    invoke-virtual {v7, v2}, Lcom/duoyou/gamesdk/b/b/b;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/duoyou/gamesdk/b/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/duoyou/gamesdk/b/b/b;->c(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/duoyou/gamesdk/b/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/duoyou/gamesdk/b/b/b;->f(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/duoyou/gamesdk/b/b/b;->g(Ljava/lang/String;)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    move-object v0, v8

    goto/16 :goto_0

    :cond_4
    move-object v7, p1

    goto/16 :goto_2

    :cond_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_6
    if-eqz v1, :cond_6

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_6
    :goto_7
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v1, v9

    goto :goto_4
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/c;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/b/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/b/b/b;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/duoyou/gamesdk/c/b/a;->a(Lcom/duoyou/gamesdk/b/b/b;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
