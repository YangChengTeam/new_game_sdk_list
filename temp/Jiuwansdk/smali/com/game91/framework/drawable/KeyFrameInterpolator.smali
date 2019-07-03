.class public Lcom/game91/framework/drawable/KeyFrameInterpolator;
.super Ljava/lang/Object;
.source "KeyFrameInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private fractions:[F

.field private interpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public varargs constructor <init>(Landroid/animation/TimeInterpolator;[F)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p2, "fractions"    # [F

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    .line 31
    iput-object p2, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->fractions:[F

    .line 32
    return-void
.end method

.method public static varargs easeInOut([F)Lcom/game91/framework/drawable/KeyFrameInterpolator;
    .locals 3
    .param p0, "fractions"    # [F

    .prologue
    .line 16
    new-instance v0, Lcom/game91/framework/drawable/KeyFrameInterpolator;

    invoke-static {}, Lcom/game91/framework/drawable/Ease;->inOut()Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [F

    invoke-direct {v0, v1, v2}, Lcom/game91/framework/drawable/KeyFrameInterpolator;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 17
    .local v0, "interpolator":Lcom/game91/framework/drawable/KeyFrameInterpolator;
    invoke-virtual {v0, p0}, Lcom/game91/framework/drawable/KeyFrameInterpolator;->setFractions([F)V

    .line 18
    return-object v0
.end method

.method public static varargs pathInterpolator(FFFF[F)Lcom/game91/framework/drawable/KeyFrameInterpolator;
    .locals 3
    .param p0, "controlX1"    # F
    .param p1, "controlY1"    # F
    .param p2, "controlX2"    # F
    .param p3, "controlY2"    # F
    .param p4, "fractions"    # [F

    .prologue
    .line 24
    new-instance v0, Lcom/game91/framework/drawable/KeyFrameInterpolator;

    invoke-static {p0, p1, p2, p3}, Lcom/game91/framework/drawable/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [F

    invoke-direct {v0, v1, v2}, Lcom/game91/framework/drawable/KeyFrameInterpolator;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 25
    .local v0, "interpolator":Lcom/game91/framework/drawable/KeyFrameInterpolator;
    invoke-virtual {v0, p4}, Lcom/game91/framework/drawable/KeyFrameInterpolator;->setFractions([F)V

    .line 26
    return-object v0
.end method


# virtual methods
.method public declared-synchronized getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->fractions:[F

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 41
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->fractions:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 42
    iget-object v4, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->fractions:[F

    aget v3, v4, v2

    .line 43
    .local v3, "start":F
    iget-object v4, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->fractions:[F

    add-int/lit8 v5, v2, 0x1

    aget v1, v4, v5

    .line 44
    .local v1, "end":F
    sub-float v0, v1, v3

    .line 45
    .local v0, "duration":F
    cmpl-float v4, p1, v3

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v1

    if-gtz v4, :cond_0

    .line 46
    sub-float v4, p1, v3

    div-float p1, v4, v0

    .line 47
    iget-object v4, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v4, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    .line 52
    .end local v0    # "duration":F
    .end local v1    # "end":F
    .end local v2    # "i":I
    .end local v3    # "start":F
    :goto_1
    monitor-exit p0

    return v4

    .line 41
    .restart local v0    # "duration":F
    .restart local v1    # "end":F
    .restart local v2    # "i":I
    .restart local v3    # "start":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "duration":F
    .end local v1    # "end":F
    .end local v2    # "i":I
    .end local v3    # "start":F
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v4, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_1

    .line 40
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public varargs setFractions([F)V
    .locals 0
    .param p1, "fractions"    # [F

    .prologue
    .line 35
    iput-object p1, p0, Lcom/game91/framework/drawable/KeyFrameInterpolator;->fractions:[F

    .line 36
    return-void
.end method
