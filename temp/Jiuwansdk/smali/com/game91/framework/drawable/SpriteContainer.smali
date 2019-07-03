.class public abstract Lcom/game91/framework/drawable/SpriteContainer;
.super Lcom/game91/framework/drawable/Sprite;
.source "SpriteContainer.java"


# instance fields
.field private color:I

.field private sprites:[Lcom/game91/framework/drawable/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/game91/framework/drawable/Sprite;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/game91/framework/drawable/SpriteContainer;->onCreateChild()[Lcom/game91/framework/drawable/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    .line 18
    invoke-direct {p0}, Lcom/game91/framework/drawable/SpriteContainer;->initCallBack()V

    .line 19
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    invoke-virtual {p0, v0}, Lcom/game91/framework/drawable/SpriteContainer;->onChildCreated([Lcom/game91/framework/drawable/Sprite;)V

    .line 20
    return-void
.end method

.method private initCallBack()V
    .locals 4

    .prologue
    .line 23
    iget-object v1, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    if-eqz v1, :cond_0

    .line 24
    iget-object v2, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 25
    .local v0, "sprite":Lcom/game91/framework/drawable/Sprite;
    invoke-virtual {v0, p0}, Lcom/game91/framework/drawable/Sprite;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/game91/framework/drawable/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/game91/framework/drawable/SpriteContainer;->drawChild(Landroid/graphics/Canvas;)V

    .line 59
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    iget-object v2, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    if-eqz v2, :cond_0

    .line 63
    iget-object v3, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 64
    .local v1, "sprite":Lcom/game91/framework/drawable/Sprite;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 65
    .local v0, "count":I
    invoke-virtual {v1, p1}, Lcom/game91/framework/drawable/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "count":I
    .end local v1    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_0
    return-void
.end method

.method protected drawSelf(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    return-void
.end method

.method public getChildAt(I)Lcom/game91/framework/drawable/Sprite;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    array-length v0, v0

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->color:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    invoke-static {v0}, Lcom/game91/framework/drawable/AnimationUtils;->isRunning([Lcom/game91/framework/drawable/Sprite;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/game91/framework/drawable/Sprite;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/game91/framework/drawable/Sprite;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 78
    iget-object v2, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 79
    .local v0, "sprite":Lcom/game91/framework/drawable/Sprite;
    invoke-virtual {v0, p1}, Lcom/game91/framework/drawable/Sprite;->setBounds(Landroid/graphics/Rect;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_0
    return-void
.end method

.method public varargs onChildCreated([Lcom/game91/framework/drawable/Sprite;)V
    .locals 0
    .param p1, "sprites"    # [Lcom/game91/framework/drawable/Sprite;

    .prologue
    .line 32
    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateChild()[Lcom/game91/framework/drawable/Sprite;
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/game91/framework/drawable/SpriteContainer;->color:I

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/game91/framework/drawable/SpriteContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Lcom/game91/framework/drawable/SpriteContainer;->getChildAt(I)Lcom/game91/framework/drawable/Sprite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/game91/framework/drawable/Sprite;->setColor(I)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/game91/framework/drawable/Sprite;->start()V

    .line 86
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    invoke-static {v0}, Lcom/game91/framework/drawable/AnimationUtils;->start([Lcom/game91/framework/drawable/Sprite;)V

    .line 87
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/game91/framework/drawable/Sprite;->stop()V

    .line 92
    iget-object v0, p0, Lcom/game91/framework/drawable/SpriteContainer;->sprites:[Lcom/game91/framework/drawable/Sprite;

    invoke-static {v0}, Lcom/game91/framework/drawable/AnimationUtils;->stop([Lcom/game91/framework/drawable/Sprite;)V

    .line 93
    return-void
.end method
