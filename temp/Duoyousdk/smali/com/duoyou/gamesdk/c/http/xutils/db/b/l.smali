.class public Lcom/duoyou/gamesdk/c/http/xutils/db/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/db/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/duoyou/gamesdk/c/http/xutils/db/b/e",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/ColumnDbType;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/ColumnDbType;->INTEGER:Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/b/l;->a(Ljava/lang/Short;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Short;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public a(Landroid/database/Cursor;I)Ljava/lang/Short;
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/db/b/l;->a(Landroid/database/Cursor;I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
