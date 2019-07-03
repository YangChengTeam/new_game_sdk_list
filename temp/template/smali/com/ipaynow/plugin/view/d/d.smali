.class public final Lcom/ipaynow/plugin/view/d/d;
.super Landroid/widget/FrameLayout;


# instance fields
.field protected cX:Lcom/ipaynow/plugin/view/d/a;

.field protected cY:I

.field protected cZ:I

.field protected da:I

.field protected db:I

.field protected dc:I

.field protected dd:I

.field protected de:J

.field protected df:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/d/d;->setClipToPadding(Z)V

    iput v1, p0, Lcom/ipaynow/plugin/view/d/d;->da:I

    iput v1, p0, Lcom/ipaynow/plugin/view/d/d;->db:I

    iput v1, p0, Lcom/ipaynow/plugin/view/d/d;->dc:I

    iput v1, p0, Lcom/ipaynow/plugin/view/d/d;->dd:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/ipaynow/plugin/view/d/e;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ipaynow/plugin/view/d/e;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/d/d;->cY:I

    return-void
.end method

.method public final a(Lcom/ipaynow/plugin/view/d/f;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ipaynow/plugin/view/d/f;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/d/d;->cZ:I

    return-void
.end method

.method public final a(Lcom/ipaynow/plugin/view/d/g;)V
    .locals 1

    invoke-virtual {p1}, Lcom/ipaynow/plugin/view/d/g;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/d/d;->da:I

    iput v0, p0, Lcom/ipaynow/plugin/view/d/d;->db:I

    iput v0, p0, Lcom/ipaynow/plugin/view/d/d;->dc:I

    iput v0, p0, Lcom/ipaynow/plugin/view/d/d;->dd:I

    return-void
.end method

.method public final ao()V
    .locals 2

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/ipaynow/plugin/view/d/d;->de:J

    return-void
.end method

.method public final ap()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/view/d/d;->df:Z

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ipaynow/plugin/view/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget v1, p0, Lcom/ipaynow/plugin/view/d/d;->cY:I

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/d/a;->setShape(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget v1, p0, Lcom/ipaynow/plugin/view/d/d;->cZ:I

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/d/a;->m(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget v1, p0, Lcom/ipaynow/plugin/view/d/d;->da:I

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/d/a;->i(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget v1, p0, Lcom/ipaynow/plugin/view/d/d;->db:I

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/d/a;->j(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget v1, p0, Lcom/ipaynow/plugin/view/d/d;->dc:I

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/d/a;->k(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget v1, p0, Lcom/ipaynow/plugin/view/d/d;->dd:I

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/d/a;->l(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget-wide v2, p0, Lcom/ipaynow/plugin/view/d/d;->de:J

    invoke-virtual {v0, v2, v3}, Lcom/ipaynow/plugin/view/d/a;->a(J)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    iget-boolean v1, p0, Lcom/ipaynow/plugin/view/d/d;->df:Z

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/view/d/a;->a(Z)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/view/d/d;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/view/d/a;->ak()I

    move-result v0

    iget-object v1, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v1}, Lcom/ipaynow/plugin/view/d/a;->al()I

    move-result v1

    iget-object v2, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/view/d/a;->am()I

    move-result v2

    iget-object v3, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/view/d/a;->an()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ipaynow/plugin/view/d/d;->setPadding(IIII)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    iget-object v2, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v2, v3, v3, v0, v1}, Lcom/ipaynow/plugin/view/d/a;->layout(IIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/d/d;->getChildCount()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v2}, Lcom/ipaynow/plugin/view/d/a;->ak()I

    move-result v2

    iget-object v3, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v3}, Lcom/ipaynow/plugin/view/d/a;->al()I

    move-result v3

    iget-object v4, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v4}, Lcom/ipaynow/plugin/view/d/a;->am()I

    move-result v4

    iget-object v5, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-virtual {v5}, Lcom/ipaynow/plugin/view/d/a;->an()I

    move-result v5

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int v2, v3, v5

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/ipaynow/plugin/view/d/d;->cX:Lcom/ipaynow/plugin/view/d/a;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/ipaynow/plugin/view/d/a;->measure(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/ipaynow/plugin/view/d/d;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
