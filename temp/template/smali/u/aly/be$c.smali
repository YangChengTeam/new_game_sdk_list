.class Lu/aly/be$c;
.super Lu/aly/dg;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dg",
        "<",
        "Lu/aly/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lu/aly/dg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lu/aly/be$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cv;Lu/aly/be;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 478
    check-cast p1, Lu/aly/db;

    .line 480
    iget-object v0, p2, Lu/aly/be;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/db;->a(I)V

    .line 481
    iget-object v0, p2, Lu/aly/be;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 482
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/db;->a(Ljava/lang/String;)V

    .line 483
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->b(Lu/aly/cv;)V

    goto :goto_0

    .line 486
    :cond_0
    iget v0, p2, Lu/aly/be;->b:I

    invoke-virtual {p1, v0}, Lu/aly/db;->a(I)V

    .line 487
    iget-object v0, p2, Lu/aly/be;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/db;->a(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public bridge synthetic a(Lu/aly/cv;Lu/aly/bw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 473
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$c;->a(Lu/aly/cv;Lu/aly/be;)V

    return-void
.end method

.method public b(Lu/aly/cv;Lu/aly/be;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 493
    check-cast p1, Lu/aly/db;

    .line 495
    new-instance v1, Lu/aly/cs;

    const/16 v0, 0xb

    const/16 v2, 0xc

    .line 497
    invoke-virtual {p1}, Lu/aly/db;->w()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lu/aly/cs;-><init>(BBI)V

    .line 498
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lu/aly/cs;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->a:Ljava/util/Map;

    .line 499
    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lu/aly/cs;->c:I

    if-ge v0, v2, :cond_0

    .line 502
    invoke-virtual {p1}, Lu/aly/db;->z()Ljava/lang/String;

    move-result-object v2

    .line 503
    new-instance v3, Lu/aly/bf;

    invoke-direct {v3}, Lu/aly/bf;-><init>()V

    .line 504
    invoke-virtual {v3, p1}, Lu/aly/bf;->a(Lu/aly/cv;)V

    .line 505
    iget-object v4, p2, Lu/aly/be;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {p2, v5}, Lu/aly/be;->a(Z)V

    .line 509
    invoke-virtual {p1}, Lu/aly/db;->w()I

    move-result v0

    iput v0, p2, Lu/aly/be;->b:I

    .line 510
    invoke-virtual {p2, v5}, Lu/aly/be;->b(Z)V

    .line 511
    invoke-virtual {p1}, Lu/aly/db;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/be;->c:Ljava/lang/String;

    .line 512
    invoke-virtual {p2, v5}, Lu/aly/be;->c(Z)V

    .line 513
    return-void
.end method

.method public bridge synthetic b(Lu/aly/cv;Lu/aly/bw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 473
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$c;->b(Lu/aly/cv;Lu/aly/be;)V

    return-void
.end method
