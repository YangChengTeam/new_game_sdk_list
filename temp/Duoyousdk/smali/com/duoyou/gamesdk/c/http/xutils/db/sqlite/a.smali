.class public final Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 6

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/c/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/http/xutils/db/b/f;->a(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;->a()Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/ColumnDbType;

    move-result-object v3

    sget-object v4, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a$1;->a:[I

    invoke-virtual {v3}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/ColumnDbType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :pswitch_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    :pswitch_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_3
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_1

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
