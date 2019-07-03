.class public abstract Lcom/game91/framework/drawable/Sprite;
.super Landroid/graphics/drawable/Drawable;
.source "Sprite.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_X_PERCENTAGE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/game91/framework/drawable/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private alpha:I

.field private animationDelay:I

.field private animator:Landroid/animation/ValueAnimator;

.field protected drawBounds:Landroid/graphics/Rect;

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private pivotX:F

.field private pivotY:F

.field private rotate:I

.field private rotateX:I

.field private rotateY:I

.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private translateX:I

.field private translateXPercentage:F

.field private translateY:I

.field private translateYPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 316
    new-instance v0, Lcom/game91/framework/drawable/Sprite$1;

    const-string v1, "rotateX"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->ROTATE_X:Landroid/util/Property;

    .line 328
    new-instance v0, Lcom/game91/framework/drawable/Sprite$2;

    const-string v1, "rotate"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->ROTATE:Landroid/util/Property;

    .line 340
    new-instance v0, Lcom/game91/framework/drawable/Sprite$3;

    const-string v1, "rotateY"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->ROTATE_Y:Landroid/util/Property;

    .line 353
    new-instance v0, Lcom/game91/framework/drawable/Sprite$4;

    const-string v1, "translateX"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->TRANSLATE_X:Landroid/util/Property;

    .line 366
    new-instance v0, Lcom/game91/framework/drawable/Sprite$5;

    const-string v1, "translateY"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->TRANSLATE_Y:Landroid/util/Property;

    .line 378
    new-instance v0, Lcom/game91/framework/drawable/Sprite$6;

    const-string v1, "translateXPercentage"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->TRANSLATE_X_PERCENTAGE:Landroid/util/Property;

    .line 390
    new-instance v0, Lcom/game91/framework/drawable/Sprite$7;

    const-string v1, "translateYPercentage"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;

    .line 403
    new-instance v0, Lcom/game91/framework/drawable/Sprite$8;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->SCALE_X:Landroid/util/Property;

    .line 415
    new-instance v0, Lcom/game91/framework/drawable/Sprite$9;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->SCALE_Y:Landroid/util/Property;

    .line 427
    new-instance v0, Lcom/game91/framework/drawable/Sprite$10;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->SCALE:Landroid/util/Property;

    .line 439
    new-instance v0, Lcom/game91/framework/drawable/Sprite$11;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/game91/framework/drawable/Sprite$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/game91/framework/drawable/Sprite;->ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    iput v0, p0, Lcom/game91/framework/drawable/Sprite;->scale:F

    .line 24
    iput v0, p0, Lcom/game91/framework/drawable/Sprite;->scaleX:F

    .line 25
    iput v0, p0, Lcom/game91/framework/drawable/Sprite;->scaleY:F

    .line 37
    const/16 v0, 0xff

    iput v0, p0, Lcom/game91/framework/drawable/Sprite;->alpha:I

    .line 39
    sget-object v0, Lcom/game91/framework/drawable/Sprite;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/game91/framework/drawable/Sprite;->drawBounds:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/drawable/Sprite;->mCamera:Landroid/graphics/Camera;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/drawable/Sprite;->mMatrix:Landroid/graphics/Matrix;

    .line 46
    return-void
.end method


# virtual methods
.method public clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 303
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 304
    .local v2, "h":I
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 305
    .local v3, "min":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 306
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 307
    .local v1, "cy":I
    div-int/lit8 v4, v3, 0x2

    .line 308
    .local v4, "r":I
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v0, v4

    sub-int v8, v1, v4

    add-int v9, v0, v4

    add-int v10, v1, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getTranslateX()I

    move-result v0

    .line 281
    .local v0, "tx":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getTranslateXPercentage()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getTranslateY()I

    move-result v1

    .line 283
    .local v1, "ty":I
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getTranslateYPercentage()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 284
    :cond_1
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 285
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getScaleX()F

    move-result v2

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getScaleY()F

    move-result v3

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getPivotX()F

    move-result v4

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getPivotY()F

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 286
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getRotate()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getPivotY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 288
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getRotateX()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getRotateY()I

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/game91/framework/drawable/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 290
    iget-object v2, p0, Lcom/game91/framework/drawable/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getRotateX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 291
    iget-object v2, p0, Lcom/game91/framework/drawable/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getRotateY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 292
    iget-object v2, p0, Lcom/game91/framework/drawable/Sprite;->mCamera:Landroid/graphics/Camera;

    iget-object v3, p0, Lcom/game91/framework/drawable/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 293
    iget-object v2, p0, Lcom/game91/framework/drawable/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getPivotX()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getPivotY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 294
    iget-object v2, p0, Lcom/game91/framework/drawable/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getPivotY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 295
    iget-object v2, p0, Lcom/game91/framework/drawable/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 296
    iget-object v2, p0, Lcom/game91/framework/drawable/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 298
    :cond_3
    invoke-virtual {p0, p1}, Lcom/game91/framework/drawable/Sprite;->drawSelf(Landroid/graphics/Canvas;)V

    .line 299
    return-void
.end method

.method protected abstract drawSelf(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->alpha:I

    return v0
.end method

.method public getAnimationDelay()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->animationDelay:I

    return v0
.end method

.method public abstract getColor()I
.end method

.method public getDrawBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->drawBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, -0x3

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->pivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->pivotY:F

    return v0
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->rotate:I

    return v0
.end method

.method public getRotateX()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->rotateX:I

    return v0
.end method

.method public getRotateY()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->rotateY:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->scale:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->scaleY:F

    return v0
.end method

.method public getTranslateX()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->translateX:I

    return v0
.end method

.method public getTranslateXPercentage()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->translateXPercentage:F

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->translateY:I

    return v0
.end method

.method public getTranslateYPercentage()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/game91/framework/drawable/Sprite;->translateYPercentage:F

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->invalidateSelf()V

    .line 254
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/game91/framework/drawable/AnimationUtils;->isRunning(Landroid/animation/ValueAnimator;)Z

    move-result v0

    return v0
.end method

.method public obtainAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->onCreateAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 203
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/game91/framework/drawable/Sprite;->animationDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 269
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/game91/framework/drawable/Sprite;->setDrawBounds(Landroid/graphics/Rect;)V

    .line 239
    return-void
.end method

.method public abstract onCreateAnimation()Landroid/animation/ValueAnimator;
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/game91/framework/drawable/Sprite;->scale:F

    .line 221
    iput v1, p0, Lcom/game91/framework/drawable/Sprite;->rotateX:I

    .line 222
    iput v1, p0, Lcom/game91/framework/drawable/Sprite;->rotateY:I

    .line 223
    iput v1, p0, Lcom/game91/framework/drawable/Sprite;->translateX:I

    .line 224
    iput v1, p0, Lcom/game91/framework/drawable/Sprite;->translateY:I

    .line 225
    iput v1, p0, Lcom/game91/framework/drawable/Sprite;->rotate:I

    .line 226
    iput v2, p0, Lcom/game91/framework/drawable/Sprite;->translateXPercentage:F

    .line 227
    iput v2, p0, Lcom/game91/framework/drawable/Sprite;->translateYPercentage:F

    .line 228
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 259
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->alpha:I

    .line 55
    return-void
.end method

.method public setAnimationDelay(I)Lcom/game91/framework/drawable/Sprite;
    .locals 0
    .param p1, "animationDelay"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->animationDelay:I

    .line 172
    return-object p0
.end method

.method public abstract setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 178
    return-void
.end method

.method public setDrawBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 246
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/game91/framework/drawable/Sprite;->drawBounds:Landroid/graphics/Rect;

    .line 247
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/game91/framework/drawable/Sprite;->setPivotX(F)V

    .line 248
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/game91/framework/drawable/Sprite;->setPivotY(F)V

    .line 249
    return-void
.end method

.method public setDrawBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "drawBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 242
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/game91/framework/drawable/Sprite;->setDrawBounds(IIII)V

    .line 243
    return-void
.end method

.method public setPivotX(F)V
    .locals 0
    .param p1, "pivotX"    # F

    .prologue
    .line 154
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->pivotX:F

    .line 155
    return-void
.end method

.method public setPivotY(F)V
    .locals 0
    .param p1, "pivotY"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->pivotY:F

    .line 163
    return-void
.end method

.method public setRotate(I)V
    .locals 0
    .param p1, "rotate"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->rotate:I

    .line 105
    return-void
.end method

.method public setRotateX(I)V
    .locals 0
    .param p1, "rotateX"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->rotateX:I

    .line 139
    return-void
.end method

.method public setRotateY(I)V
    .locals 0
    .param p1, "rotateY"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->rotateY:I

    .line 147
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 112
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->scale:F

    .line 113
    invoke-virtual {p0, p1}, Lcom/game91/framework/drawable/Sprite;->setScaleX(F)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/game91/framework/drawable/Sprite;->setScaleY(F)V

    .line 115
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .prologue
    .line 122
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->scaleX:F

    .line 123
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->scaleY:F

    .line 131
    return-void
.end method

.method public setTranslateX(I)V
    .locals 0
    .param p1, "translateX"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->translateX:I

    .line 89
    return-void
.end method

.method public setTranslateXPercentage(F)V
    .locals 0
    .param p1, "translateXPercentage"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->translateXPercentage:F

    .line 73
    return-void
.end method

.method public setTranslateY(I)V
    .locals 0
    .param p1, "translateY"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->translateY:I

    .line 97
    return-void
.end method

.method public setTranslateYPercentage(F)V
    .locals 0
    .param p1, "translateYPercentage"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/game91/framework/drawable/Sprite;->translateYPercentage:F

    .line 81
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/game91/framework/drawable/AnimationUtils;->isStarted(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->obtainAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    .line 189
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/game91/framework/drawable/AnimationUtils;->start(Landroid/animation/Animator;)V

    .line 194
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/game91/framework/drawable/AnimationUtils;->isStarted(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 212
    iget-object v0, p0, Lcom/game91/framework/drawable/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 213
    invoke-virtual {p0}, Lcom/game91/framework/drawable/Sprite;->reset()V

    .line 215
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 264
    return-void
.end method
