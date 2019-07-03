.class public Lcom/game91/framework/widget/LoadingLayout;
.super Landroid/widget/LinearLayout;
.source "LoadingLayout.java"


# static fields
.field private static mBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/high16 v0, -0x6b000000

    sput v0, Lcom/game91/framework/widget/LoadingLayout;->mBackgroundColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/game91/framework/widget/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/game91/framework/widget/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/game91/framework/widget/LoadingLayout;->createSubView()V

    .line 32
    return-void
.end method

.method private createSubView()V
    .locals 4

    .prologue
    const/high16 v3, 0x42100000    # 36.0f

    .line 35
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 36
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v2, 0x40600000    # 3.5f

    invoke-static {v2}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 37
    sget v2, Lcom/game91/framework/widget/LoadingLayout;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/game91/framework/widget/LoadingLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/game91/framework/widget/LoadingLayout;->setGravity(I)V

    .line 41
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/game91/framework/widget/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    new-instance v2, Lcom/game91/framework/drawable/FadingCircle;

    invoke-direct {v2}, Lcom/game91/framework/drawable/FadingCircle;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-static {v3}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v2

    invoke-static {v3}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/game91/framework/widget/LoadingLayout;->addView(Landroid/view/View;II)V

    .line 44
    return-void
.end method
