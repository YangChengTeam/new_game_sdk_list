.class public Lcom/game91/framework/drawable/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRunning(Landroid/animation/ValueAnimator;)Z
    .locals 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 45
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isRunning([Lcom/game91/framework/drawable/Sprite;)Z
    .locals 5
    .param p0, "sprites"    # [Lcom/game91/framework/drawable/Sprite;

    .prologue
    const/4 v1, 0x0

    .line 36
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 37
    .local v0, "sprite":Lcom/game91/framework/drawable/Sprite;
    invoke-virtual {v0}, Lcom/game91/framework/drawable/Sprite;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    const/4 v1, 0x1

    .line 41
    .end local v0    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_0
    return v1

    .line 36
    .restart local v0    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isStarted(Landroid/animation/ValueAnimator;)Z
    .locals 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static start(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 12
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 15
    :cond_0
    return-void
.end method

.method public static varargs start([Lcom/game91/framework/drawable/Sprite;)V
    .locals 3
    .param p0, "sprites"    # [Lcom/game91/framework/drawable/Sprite;

    .prologue
    .line 24
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 25
    .local v0, "sprite":Lcom/game91/framework/drawable/Sprite;
    invoke-virtual {v0}, Lcom/game91/framework/drawable/Sprite;->start()V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_0
    return-void
.end method

.method public static stop(Landroid/animation/Animator;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    .line 21
    :cond_0
    return-void
.end method

.method public static varargs stop([Lcom/game91/framework/drawable/Sprite;)V
    .locals 3
    .param p0, "sprites"    # [Lcom/game91/framework/drawable/Sprite;

    .prologue
    .line 30
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 31
    .local v0, "sprite":Lcom/game91/framework/drawable/Sprite;
    invoke-virtual {v0}, Lcom/game91/framework/drawable/Sprite;->stop()V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "sprite":Lcom/game91/framework/drawable/Sprite;
    :cond_0
    return-void
.end method
