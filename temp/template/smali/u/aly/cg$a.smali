.class Lu/aly/cg$a;
.super Lu/aly/df;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/df",
        "<",
        "Lu/aly/cg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/df;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cg$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/cg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lu/aly/cv;Lu/aly/bw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 216
    check-cast p2, Lu/aly/cg;

    invoke-virtual {p0, p1, p2}, Lu/aly/cg$a;->b(Lu/aly/cv;Lu/aly/cg;)V

    return-void
.end method

.method public a(Lu/aly/cv;Lu/aly/cg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p2, Lu/aly/cg;->b:Lu/aly/cd;

    .line 221
    iput-object v0, p2, Lu/aly/cg;->a:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lu/aly/cv;->j()Lu/aly/da;

    .line 225
    invoke-virtual {p1}, Lu/aly/cv;->l()Lu/aly/cq;

    move-result-object v0

    .line 227
    invoke-virtual {p2, p1, v0}, Lu/aly/cg;->a(Lu/aly/cv;Lu/aly/cq;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cg;->a:Ljava/lang/Object;

    .line 228
    iget-object v1, p2, Lu/aly/cg;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 229
    iget-short v0, v0, Lu/aly/cq;->c:S

    invoke-virtual {p2, v0}, Lu/aly/cg;->a(S)Lu/aly/cd;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cg;->b:Lu/aly/cd;

    .line 232
    :cond_0
    invoke-virtual {p1}, Lu/aly/cv;->m()V

    .line 236
    invoke-virtual {p1}, Lu/aly/cv;->l()Lu/aly/cq;

    .line 237
    invoke-virtual {p1}, Lu/aly/cv;->k()V

    .line 238
    return-void
.end method

.method public synthetic b(Lu/aly/cv;Lu/aly/bw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 216
    check-cast p2, Lu/aly/cg;

    invoke-virtual {p0, p1, p2}, Lu/aly/cg$a;->a(Lu/aly/cv;Lu/aly/cg;)V

    return-void
.end method

.method public b(Lu/aly/cv;Lu/aly/cg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p2}, Lu/aly/cg;->a()Lu/aly/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/cg;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Lu/aly/cw;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/cw;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    invoke-virtual {p2}, Lu/aly/cg;->e()Lu/aly/da;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Lu/aly/da;)V

    .line 246
    iget-object v0, p2, Lu/aly/cg;->b:Lu/aly/cd;

    invoke-virtual {p2, v0}, Lu/aly/cg;->c(Lu/aly/cd;)Lu/aly/cq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/cv;->a(Lu/aly/cq;)V

    .line 247
    invoke-virtual {p2, p1}, Lu/aly/cg;->c(Lu/aly/cv;)V

    .line 248
    invoke-virtual {p1}, Lu/aly/cv;->c()V

    .line 249
    invoke-virtual {p1}, Lu/aly/cv;->d()V

    .line 250
    invoke-virtual {p1}, Lu/aly/cv;->b()V

    .line 251
    return-void
.end method
