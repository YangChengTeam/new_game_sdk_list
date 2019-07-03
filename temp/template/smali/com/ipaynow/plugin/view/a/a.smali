.class final Lcom/ipaynow/plugin/view/a/a;
.super Landroid/view/View;

# interfaces
.implements Lcom/ipaynow/plugin/view/a/d;


# instance fields
.field private bG:Landroid/graphics/Paint;

.field private bH:Landroid/graphics/Paint;

.field private bI:Landroid/graphics/RectF;

.field private bJ:I

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/ipaynow/plugin/view/a/a;->bJ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ipaynow/plugin/view/a/a;->mProgress:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bG:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bG:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bG:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ipaynow/plugin/view/a/f;->dpToPixel(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bG:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bH:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bH:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bH:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ipaynow/plugin/view/a/f;->dpToPixel(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bH:Landroid/graphics/Paint;

    const-string v1, "#449E9E9E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/a/a;->bI:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v4, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/ipaynow/plugin/view/a/a;->mProgress:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/ipaynow/plugin/view/a/a;->bJ:I

    int-to-float v1, v1

    div-float v3, v0, v1

    iget-object v1, p0, Lcom/ipaynow/plugin/view/a/a;->bI:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/ipaynow/plugin/view/a/a;->bG:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/view/a/a;->bI:Landroid/graphics/RectF;

    add-float/2addr v2, v3

    sub-float v3, v6, v3

    iget-object v5, p0, Lcom/ipaynow/plugin/view/a/a;->bH:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/view/a/f;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/ipaynow/plugin/view/a/a;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/view/a/f;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/ipaynow/plugin/view/a/a;->bI:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    sub-int v4, p1, v0

    int-to-float v4, v4

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final setMax(I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/view/a/a;->bJ:I

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/view/a/a;->mProgress:I

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/a;->invalidate()V

    return-void
.end method
