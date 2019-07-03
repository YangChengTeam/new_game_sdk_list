.class Lcom/game91/framework/drawable/PathInterpolatorCompatBase;
.super Ljava/lang/Object;
.source "PathInterpolatorCompatBase.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static create(FF)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "controlX"    # F
    .param p1, "controlY"    # F

    .prologue
    .line 20
    new-instance v0, Lcom/game91/framework/drawable/PathInterpolatorDonut;

    invoke-direct {v0, p0, p1}, Lcom/game91/framework/drawable/PathInterpolatorDonut;-><init>(FF)V

    return-object v0
.end method

.method public static create(FFFF)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "controlX1"    # F
    .param p1, "controlY1"    # F
    .param p2, "controlX2"    # F
    .param p3, "controlY2"    # F

    .prologue
    .line 25
    new-instance v0, Lcom/game91/framework/drawable/PathInterpolatorDonut;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/game91/framework/drawable/PathInterpolatorDonut;-><init>(FFFF)V

    return-object v0
.end method

.method public static create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "path"    # Landroid/graphics/Path;

    .prologue
    .line 16
    new-instance v0, Lcom/game91/framework/drawable/PathInterpolatorDonut;

    invoke-direct {v0, p0}, Lcom/game91/framework/drawable/PathInterpolatorDonut;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method
