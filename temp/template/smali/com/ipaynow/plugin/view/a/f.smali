.class final Lcom/ipaynow/plugin/view/a/f;
.super Ljava/lang/Object;


# static fields
.field private static bR:F


# direct methods
.method public static dpToPixel(FLandroid/content/Context;)I
    .locals 2

    sget v0, Lcom/ipaynow/plugin/view/a/f;->bR:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/ipaynow/plugin/view/a/f;->bR:F

    :cond_0
    sget v0, Lcom/ipaynow/plugin/view/a/f;->bR:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method
