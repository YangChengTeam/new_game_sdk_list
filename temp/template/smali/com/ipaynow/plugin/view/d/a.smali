.class public final Lcom/ipaynow/plugin/view/d/a;
.super Landroid/view/View;


# instance fields
.field protected cL:Lcom/ipaynow/plugin/view/d/a/a;

.field protected cM:Lcom/ipaynow/plugin/view/d/c;

.field protected cN:I

.field protected cO:I

.field protected cP:I

.field protected cQ:I

.field protected cR:J

.field protected cS:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ipaynow/plugin/view/d/a;-><init>(Landroid/content/Context;B)V

    invoke-direct {p0}, Lcom/ipaynow/plugin/view/d/a;->init()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ipaynow/plugin/view/d/a;-><init>(Landroid/content/Context;C)V

    invoke-direct {p0}, Lcom/ipaynow/plugin/view/d/a;->init()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;C)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/ipaynow/plugin/view/d/a;->init()V

    return-void
.end method

.method private a(Lcom/ipaynow/plugin/view/d/b;)I
    .locals 4

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ipaynow/plugin/view/d/b;->getBlurTopShadowPx(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ipaynow/plugin/view/d/b;->getOffsetYTopShadowPx(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/d/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ipaynow/plugin/view/d/b;->getBlurBottomShadowPx(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/d/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ipaynow/plugin/view/d/b;->getOffsetYBottomShadowPx(Landroid/content/Context;)F

    move-result v3

    add-float/2addr v0, v1

    add-float v1, v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/d/a;->setWillNotDraw(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/view/d/a;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private static n(I)Lcom/ipaynow/plugin/view/d/b;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown zDepth value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/ipaynow/plugin/view/d/b;->Depth0:Lcom/ipaynow/plugin/view/d/b;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/ipaynow/plugin/view/d/b;->Depth1:Lcom/ipaynow/plugin/view/d/b;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ipaynow/plugin/view/d/b;->Depth2:Lcom/ipaynow/plugin/view/d/b;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ipaynow/plugin/view/d/b;->Depth3:Lcom/ipaynow/plugin/view/d/b;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/ipaynow/plugin/view/d/b;->Depth4:Lcom/ipaynow/plugin/view/d/b;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/ipaynow/plugin/view/d/b;->Depth5:Lcom/ipaynow/plugin/view/d/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ipaynow/plugin/view/d/a;->cR:J

    return-void
.end method

.method protected final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/plugin/view/d/a;->cS:Z

    return-void
.end method

.method protected final ak()I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/d/a;->cN:I

    return v0
.end method

.method protected final al()I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/d/a;->cO:I

    return v0
.end method

.method protected final am()I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/d/a;->cP:I

    return v0
.end method

.method protected final an()I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/d/a;->cQ:I

    return v0
.end method

.method protected final i(I)V
    .locals 1

    invoke-static {p1}, Lcom/ipaynow/plugin/view/d/a;->n(I)Lcom/ipaynow/plugin/view/d/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/view/d/a;->a(Lcom/ipaynow/plugin/view/d/b;)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/d/a;->cN:I

    return-void
.end method

.method protected final j(I)V
    .locals 1

    invoke-static {p1}, Lcom/ipaynow/plugin/view/d/a;->n(I)Lcom/ipaynow/plugin/view/d/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/view/d/a;->a(Lcom/ipaynow/plugin/view/d/b;)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/d/a;->cO:I

    return-void
.end method

.method protected final k(I)V
    .locals 1

    invoke-static {p1}, Lcom/ipaynow/plugin/view/d/a;->n(I)Lcom/ipaynow/plugin/view/d/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/view/d/a;->a(Lcom/ipaynow/plugin/view/d/b;)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/d/a;->cP:I

    return-void
.end method

.method protected final l(I)V
    .locals 1

    invoke-static {p1}, Lcom/ipaynow/plugin/view/d/a;->n(I)Lcom/ipaynow/plugin/view/d/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ipaynow/plugin/view/d/a;->a(Lcom/ipaynow/plugin/view/d/b;)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/d/a;->cQ:I

    return-void
.end method

.method protected final m(I)V
    .locals 4

    invoke-static {p1}, Lcom/ipaynow/plugin/view/d/a;->n(I)Lcom/ipaynow/plugin/view/d/b;

    move-result-object v0

    new-instance v1, Lcom/ipaynow/plugin/view/d/c;

    invoke-direct {v1}, Lcom/ipaynow/plugin/view/d/c;-><init>()V

    iput-object v1, p0, Lcom/ipaynow/plugin/view/d/a;->cM:Lcom/ipaynow/plugin/view/d/c;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/d/a;->cM:Lcom/ipaynow/plugin/view/d/c;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/d/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/d/b;->getAlphaTopShadow()I

    move-result v3

    iput v3, v1, Lcom/ipaynow/plugin/view/d/c;->mAlphaTopShadow:I

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/d/b;->getAlphaBottomShadow()I

    move-result v3

    iput v3, v1, Lcom/ipaynow/plugin/view/d/c;->mAlphaBottomShadow:I

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/b;->getOffsetYTopShadowPx(Landroid/content/Context;)F

    move-result v3

    iput v3, v1, Lcom/ipaynow/plugin/view/d/c;->cT:F

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/b;->getOffsetYBottomShadowPx(Landroid/content/Context;)F

    move-result v3

    iput v3, v1, Lcom/ipaynow/plugin/view/d/c;->cU:F

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/b;->getBlurTopShadowPx(Landroid/content/Context;)F

    move-result v3

    iput v3, v1, Lcom/ipaynow/plugin/view/d/c;->cV:F

    invoke-virtual {v0, v2}, Lcom/ipaynow/plugin/view/d/b;->getBlurBottomShadowPx(Landroid/content/Context;)F

    move-result v0

    iput v0, v1, Lcom/ipaynow/plugin/view/d/c;->cW:F

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a;->cL:Lcom/ipaynow/plugin/view/d/a/a;

    invoke-interface {v0, p1}, Lcom/ipaynow/plugin/view/d/a/a;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 7

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a;->cL:Lcom/ipaynow/plugin/view/d/a/a;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/d/a;->cM:Lcom/ipaynow/plugin/view/d/c;

    iget v2, p0, Lcom/ipaynow/plugin/view/d/a;->cN:I

    iget v3, p0, Lcom/ipaynow/plugin/view/d/a;->cO:I

    iget v6, p0, Lcom/ipaynow/plugin/view/d/a;->cP:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/ipaynow/plugin/view/d/a;->cQ:I

    sub-int/2addr v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/ipaynow/plugin/view/d/a/a;->a(Lcom/ipaynow/plugin/view/d/c;IIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sparse-switch v3, :sswitch_data_0

    :goto_0
    :sswitch_0
    sparse-switch v4, :sswitch_data_1

    :goto_1
    :sswitch_1
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/view/View;->onMeasure(II)V

    return-void

    :sswitch_2
    move v2, v1

    goto :goto_0

    :sswitch_3
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_3
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final setShape(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown shape value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/ipaynow/plugin/view/d/a/c;

    invoke-direct {v0}, Lcom/ipaynow/plugin/view/d/a/c;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/d/a;->cL:Lcom/ipaynow/plugin/view/d/a/a;

    :goto_0
    return-void

    :pswitch_1
    new-instance v0, Lcom/ipaynow/plugin/view/d/a/b;

    invoke-direct {v0}, Lcom/ipaynow/plugin/view/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/d/a;->cL:Lcom/ipaynow/plugin/view/d/a/a;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
