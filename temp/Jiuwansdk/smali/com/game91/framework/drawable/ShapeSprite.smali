.class public abstract Lcom/game91/framework/drawable/ShapeSprite;
.super Lcom/game91/framework/drawable/Sprite;
.source "ShapeSprite.java"


# instance fields
.field private mBaseColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mUseColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/game91/framework/drawable/Sprite;-><init>()V

    .line 15
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/game91/framework/drawable/ShapeSprite;->setColor(I)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/drawable/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    .line 17
    iget-object v0, p0, Lcom/game91/framework/drawable/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iget-object v0, p0, Lcom/game91/framework/drawable/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/drawable/ShapeSprite;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    return-void
.end method

.method private updateUseColor()V
    .locals 5

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/game91/framework/drawable/ShapeSprite;->getAlpha()I

    move-result v0

    .line 45
    .local v0, "alpha":I
    shr-int/lit8 v3, v0, 0x7

    add-int/2addr v0, v3

    .line 46
    iget v3, p0, Lcom/game91/framework/drawable/ShapeSprite;->mBaseColor:I

    ushr-int/lit8 v1, v3, 0x18

    .line 47
    .local v1, "baseAlpha":I
    mul-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x8

    .line 48
    .local v2, "useAlpha":I
    iget v3, p0, Lcom/game91/framework/drawable/ShapeSprite;->mBaseColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v2, 0x18

    or-int/2addr v3, v4

    iput v3, p0, Lcom/game91/framework/drawable/ShapeSprite;->mUseColor:I

    .line 49
    return-void
.end method


# virtual methods
.method protected final drawSelf(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/game91/framework/drawable/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/drawable/ShapeSprite;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/game91/framework/drawable/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/game91/framework/drawable/ShapeSprite;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 60
    return-void
.end method

.method public abstract drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/game91/framework/drawable/ShapeSprite;->mBaseColor:I

    return v0
.end method

.method public getUseColor()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/game91/framework/drawable/ShapeSprite;->mUseColor:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/game91/framework/drawable/Sprite;->setAlpha(I)V

    .line 40
    invoke-direct {p0}, Lcom/game91/framework/drawable/ShapeSprite;->updateUseColor()V

    .line 41
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/game91/framework/drawable/ShapeSprite;->mBaseColor:I

    .line 24
    invoke-direct {p0}, Lcom/game91/framework/drawable/ShapeSprite;->updateUseColor()V

    .line 25
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/game91/framework/drawable/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 54
    return-void
.end method
