.class public Lcom/game91/framework/act/DarkListActivity$DarkListView;
.super Landroid/widget/LinearLayout;
.source "DarkListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/act/DarkListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DarkListView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v1

    invoke-static {v3}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v2

    invoke-virtual {p0, v4, v1, v4, v2}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->setPadding(IIII)V

    .line 177
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->setGravity(I)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->setOrientation(I)V

    .line 180
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 181
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v3}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 182
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    return-void
.end method

.method private isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 216
    :cond_0
    return v0
.end method


# virtual methods
.method public getMearureHeight()I
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x43070000    # 135.0f

    invoke-static {v0}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public getMearureWidth()I
    .locals 5

    .prologue
    const/high16 v4, 0x3f400000    # 0.75f

    .line 188
    invoke-virtual {p0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 189
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 190
    .local v0, "h":I
    move v1, v2

    .line 191
    .local v1, "size":I
    if-le v2, v0, :cond_0

    .line 192
    int-to-float v3, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 194
    :goto_0
    return v3

    :cond_0
    int-to-float v3, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/game91/framework/act/DarkListActivity$DarkListView;->getMearureWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 200
    return-void
.end method
