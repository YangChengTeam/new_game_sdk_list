.class final Lcom/ipaynow/plugin/view/a/m;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/ipaynow/plugin/view/a/g;


# instance fields
.field private bV:F

.field private bW:I

.field private bX:Z

.field private bY:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/m;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "kprogresshud_spinner.png"

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/view/a/e;->getDrawableFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/ipaynow/plugin/view/a/l;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v3}, Lcom/ipaynow/plugin/view/a/l;->dip2px(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/a/m;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x53

    iput v0, p0, Lcom/ipaynow/plugin/view/a/m;->bW:I

    new-instance v0, Lcom/ipaynow/plugin/view/a/n;

    invoke-direct {v0, p0}, Lcom/ipaynow/plugin/view/a/n;-><init>(Lcom/ipaynow/plugin/view/a/m;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/a/m;->bY:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/view/a/m;)F
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/a/m;->bV:F

    return v0
.end method

.method static synthetic a(Lcom/ipaynow/plugin/view/a/m;F)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/plugin/view/a/m;->bV:F

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/plugin/view/a/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/plugin/view/a/m;->bX:Z

    return v0
.end method

.method static synthetic c(Lcom/ipaynow/plugin/view/a/m;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/plugin/view/a/m;->bW:I

    return v0
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ipaynow/plugin/view/a/m;->bX:Z

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a/m;->bY:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/a/m;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/plugin/view/a/m;->bX:Z

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/ipaynow/plugin/view/a/m;->bV:F

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/m;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ipaynow/plugin/view/a/m;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final setAnimationSpeed(F)V
    .locals 1

    const/high16 v0, 0x42a60000    # 83.0f

    div-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/ipaynow/plugin/view/a/m;->bW:I

    return-void
.end method
