.class public final Lcom/ipaynow/plugin/view/d/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/view/d/a/a;


# instance fields
.field private dg:Landroid/graphics/drawable/ShapeDrawable;

.field private dh:Landroid/graphics/drawable/ShapeDrawable;

.field private di:Landroid/graphics/RectF;

.field private dj:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->di:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dj:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dg:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dh:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ipaynow/plugin/view/d/c;IIII)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->di:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->di:Landroid/graphics/RectF;

    int-to-float v1, p3

    iget v2, p1, Lcom/ipaynow/plugin/view/d/c;->cT:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->di:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->di:Landroid/graphics/RectF;

    int-to-float v1, p5

    iget v2, p1, Lcom/ipaynow/plugin/view/d/c;->cT:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dj:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dj:Landroid/graphics/RectF;

    int-to-float v1, p3

    iget v2, p1, Lcom/ipaynow/plugin/view/d/c;->cU:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dj:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dj:Landroid/graphics/RectF;

    int-to-float v1, p5

    iget v2, p1, Lcom/ipaynow/plugin/view/d/c;->cU:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p1, Lcom/ipaynow/plugin/view/d/c;->mAlphaTopShadow:I

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p1, Lcom/ipaynow/plugin/view/d/c;->cV:F

    cmpg-float v0, v5, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p1, Lcom/ipaynow/plugin/view/d/c;->cV:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_0
    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dh:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p1, Lcom/ipaynow/plugin/view/d/c;->mAlphaBottomShadow:I

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p1, Lcom/ipaynow/plugin/view/d/c;->cW:F

    cmpg-float v0, v5, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dh:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p1, Lcom/ipaynow/plugin/view/d/c;->cW:F

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dh:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->dj:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/d/a/b;->dh:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/d/a/b;->di:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/d/a/b;->dg:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
