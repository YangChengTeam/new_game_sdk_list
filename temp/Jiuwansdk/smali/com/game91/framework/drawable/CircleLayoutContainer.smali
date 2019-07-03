.class abstract Lcom/game91/framework/drawable/CircleLayoutContainer;
.super Lcom/game91/framework/drawable/SpriteContainer;
.source "CircleLayoutContainer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/game91/framework/drawable/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/game91/framework/drawable/CircleLayoutContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 16
    invoke-virtual {p0, v1}, Lcom/game91/framework/drawable/CircleLayoutContainer;->getChildAt(I)Lcom/game91/framework/drawable/Sprite;

    move-result-object v2

    .line 17
    .local v2, "sprite":Lcom/game91/framework/drawable/Sprite;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 18
    .local v0, "count":I
    mul-int/lit16 v3, v1, 0x168

    invoke-virtual {p0}, Lcom/game91/framework/drawable/CircleLayoutContainer;->getChildCount()I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v3, v3

    .line 19
    invoke-virtual {p0}, Lcom/game91/framework/drawable/CircleLayoutContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 20
    invoke-virtual {p0}, Lcom/game91/framework/drawable/CircleLayoutContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    .line 18
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 21
    invoke-virtual {v2, p1}, Lcom/game91/framework/drawable/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    .end local v0    # "count":I
    .end local v2    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/game91/framework/drawable/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/game91/framework/drawable/CircleLayoutContainer;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v6, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x400cccccc0000000L    # 3.5999999046325684

    div-double/2addr v6, v8

    invoke-virtual {p0}, Lcom/game91/framework/drawable/CircleLayoutContainer;->getChildCount()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    double-to-int v2, v6

    .line 31
    .local v2, "radius":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v1, v5, v2

    .line 32
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    add-int v3, v5, v2

    .line 33
    .local v3, "right":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/game91/framework/drawable/CircleLayoutContainer;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lcom/game91/framework/drawable/CircleLayoutContainer;->getChildAt(I)Lcom/game91/framework/drawable/Sprite;

    move-result-object v4

    .line 35
    .local v4, "sprite":Lcom/game91/framework/drawable/Sprite;
    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v4, v1, v5, v3, v6}, Lcom/game91/framework/drawable/Sprite;->setDrawBounds(IIII)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    .end local v4    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_0
    return-void
.end method
