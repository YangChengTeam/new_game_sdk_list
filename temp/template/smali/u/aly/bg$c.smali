.class Lu/aly/bg$c;
.super Lu/aly/dg;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dg",
        "<",
        "Lu/aly/bg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lu/aly/dg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bg$1;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lu/aly/bg$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cv;Lu/aly/bg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 436
    check-cast p1, Lu/aly/db;

    .line 437
    iget v0, p2, Lu/aly/bg;->a:I

    invoke-virtual {p1, v0}, Lu/aly/db;->a(I)V

    .line 438
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 439
    invoke-virtual {p2}, Lu/aly/bg;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 442
    :cond_0
    invoke-virtual {p2}, Lu/aly/bg;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 445
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/db;->a(Ljava/util/BitSet;I)V

    .line 446
    invoke-virtual {p2}, Lu/aly/bg;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p2, Lu/aly/bg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/db;->a(Ljava/lang/String;)V

    .line 449
    :cond_2
    invoke-virtual {p2}, Lu/aly/bg;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p2, Lu/aly/bg;->c:Lu/aly/be;

    invoke-virtual {v0, p1}, Lu/aly/be;->b(Lu/aly/cv;)V

    .line 452
    :cond_3
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
    .line 431
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/bg$c;->a(Lu/aly/cv;Lu/aly/bg;)V

    return-void
.end method

.method public b(Lu/aly/cv;Lu/aly/bg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 457
    check-cast p1, Lu/aly/db;

    .line 458
    invoke-virtual {p1}, Lu/aly/db;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bg;->a:I

    .line 459
    invoke-virtual {p2, v2}, Lu/aly/bg;->a(Z)V

    .line 460
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/db;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 461
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    invoke-virtual {p1}, Lu/aly/db;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bg;->b:Ljava/lang/String;

    .line 463
    invoke-virtual {p2, v2}, Lu/aly/bg;->b(Z)V

    .line 465
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    new-instance v0, Lu/aly/be;

    invoke-direct {v0}, Lu/aly/be;-><init>()V

    iput-object v0, p2, Lu/aly/bg;->c:Lu/aly/be;

    .line 467
    iget-object v0, p2, Lu/aly/bg;->c:Lu/aly/be;

    invoke-virtual {v0, p1}, Lu/aly/be;->a(Lu/aly/cv;)V

    .line 468
    invoke-virtual {p2, v2}, Lu/aly/bg;->c(Z)V

    .line 470
    :cond_1
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
    .line 431
    check-cast p2, Lu/aly/bg;

    invoke-virtual {p0, p1, p2}, Lu/aly/bg$c;->b(Lu/aly/cv;Lu/aly/bg;)V

    return-void
.end method
