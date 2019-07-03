.class public Lcom/game91/framework/widget/NumberProgressBar;
.super Landroid/view/View;
.source "NumberProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/widget/NumberProgressBar$OnProgressBarListener;,
        Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;
    }
.end annotation


# static fields
.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PREFIX:Ljava/lang/String; = "prefix"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_REACHED_BAR_COLOR:Ljava/lang/String; = "reached_bar_color"

.field private static final INSTANCE_REACHED_BAR_HEIGHT:Ljava/lang/String; = "reached_bar_height"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_TEXT_VISIBILITY:Ljava/lang/String; = "text_visibility"

.field private static final INSTANCE_UNREACHED_BAR_COLOR:Ljava/lang/String; = "unreached_bar_color"

.field private static final INSTANCE_UNREACHED_BAR_HEIGHT:Ljava/lang/String; = "unreached_bar_height"

.field private static final PROGRESS_TEXT_VISIBLE:I


# instance fields
.field private final default_progress_text_offset:F

.field private final default_reached_bar_height:F

.field private final default_reached_color:I

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unreached_bar_height:F

.field private final default_unreached_color:I

.field private mCicrlePaint:Landroid/graphics/Paint;

.field private mCurrentDrawText:Ljava/lang/String;

.field private mCurrentProgress:F

.field private mDrawReachedBar:Z

.field private mDrawTextEnd:F

.field private mDrawTextStart:F

.field private mDrawTextWidth:F

.field private mDrawUnreachedBar:Z

.field private mIfDrawText:Z

.field private mListener:Lcom/game91/framework/widget/NumberProgressBar$OnProgressBarListener;

.field private mMaxProgress:I

.field private mOffset:F

.field private mPrefix:Ljava/lang/String;

.field private mReachedBarColor:I

.field private mReachedBarHeight:F

.field private mReachedBarPaint:Landroid/graphics/Paint;

.field private mReachedRectF:Landroid/graphics/RectF;

.field private mSuffix:Ljava/lang/String;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mUnreachedBarColor:I

.field private mUnreachedBarHeight:F

.field private mUnreachedBarPaint:Landroid/graphics/Paint;

.field private mUnreachedRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/game91/framework/widget/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/game91/framework/widget/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/16 v6, 0xcc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/16 v1, 0x3e

    const/16 v2, 0xce

    const/16 v3, 0xee

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_text_color:I

    .line 37
    const/16 v1, 0x3e

    const/16 v2, 0xce

    const/16 v3, 0xee

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_reached_color:I

    .line 38
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_unreached_color:I

    .line 40
    iput v8, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_text_size:F

    .line 41
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_reached_bar_height:F

    .line 42
    invoke-static {v7}, Lcom/game91/framework/util/DimenUtills;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_unreached_bar_height:F

    .line 43
    const/16 v1, 0x64

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mMaxProgress:I

    .line 47
    iput v4, p0, Lcom/game91/framework/widget/NumberProgressBar;->mCurrentProgress:F

    .line 75
    const-string v1, "%"

    iput-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mSuffix:Ljava/lang/String;

    .line 79
    const-string v1, ""

    iput-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mPrefix:Ljava/lang/String;

    .line 116
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    .line 120
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    .line 130
    iput-boolean v5, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 132
    iput-boolean v5, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawReachedBar:Z

    .line 134
    iput-boolean v5, p0, Lcom/game91/framework/widget/NumberProgressBar;->mIfDrawText:Z

    .line 158
    invoke-virtual {p0, v7}, Lcom/game91/framework/widget/NumberProgressBar;->dp2px(F)F

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_progress_text_offset:F

    .line 160
    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_reached_color:I

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarColor:I

    .line 161
    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_unreached_color:I

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarColor:I

    .line 162
    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_text_color:I

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextColor:I

    .line 163
    iput v8, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextSize:F

    .line 165
    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_reached_bar_height:F

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    .line 166
    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_unreached_bar_height:F

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    .line 167
    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->default_progress_text_offset:F

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mOffset:F

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "textVisible":I
    if-eqz v0, :cond_0

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mIfDrawText:Z

    .line 174
    :cond_0
    invoke-virtual {p0, v4}, Lcom/game91/framework/widget/NumberProgressBar;->setProgress(F)V

    .line 175
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/game91/framework/widget/NumberProgressBar;->setMax(I)V

    .line 177
    invoke-direct {p0}, Lcom/game91/framework/widget/NumberProgressBar;->initializePainters()V

    .line 178
    return-void
.end method

.method private calculateDrawRectF()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 275
    const-string v1, "%.2f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgress()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextWidth:F

    .line 279
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgress()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 280
    iput-boolean v6, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawReachedBar:Z

    .line 281
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextStart:F

    .line 291
    :goto_0
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget-object v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextEnd:F

    .line 293
    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextWidth:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextWidth:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextStart:F

    .line 295
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextStart:F

    iget v3, p0, Lcom/game91/framework/widget/NumberProgressBar;->mOffset:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 298
    :cond_0
    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextWidth:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mOffset:F

    add-float v0, v1, v2

    .line 299
    .local v0, "unreachedBarStart":F
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 300
    iput-boolean v6, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 308
    :goto_1
    return-void

    .line 283
    .end local v0    # "unreachedBarStart":F
    :cond_1
    iput-boolean v7, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawReachedBar:Z

    .line 284
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 285
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 286
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgress()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/game91/framework/widget/NumberProgressBar;->mOffset:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 287
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 288
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mOffset:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextStart:F

    goto/16 :goto_0

    .line 302
    .restart local v0    # "unreachedBarStart":F
    :cond_2
    iput-boolean v7, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawUnreachedBar:Z

    .line 303
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 304
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 305
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 306
    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private calculateDrawRectFWithoutProgressText()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 262
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 263
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 264
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgress()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 265
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 267
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 268
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 269
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    neg-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 270
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 271
    return-void
.end method

.method private initializePainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    .line 248
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    .line 251
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 254
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 259
    return-void
.end method

.method private measure(IZ)I
    .locals 6
    .param p1, "measureSpec"    # I
    .param p2, "isWidth"    # Z

    .prologue
    .line 197
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 198
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 199
    .local v3, "size":I
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingRight()I

    move-result v5

    add-int v1, v4, v5

    .line 200
    .local v1, "padding":I
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_2

    .line 201
    move v2, v3

    .line 213
    .local v2, "result":I
    :cond_0
    :goto_1
    return v2

    .line 199
    .end local v1    # "padding":I
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPaddingBottom()I

    move-result v5

    add-int v1, v4, v5

    goto :goto_0

    .line 203
    .restart local v1    # "padding":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getSuggestedMinimumWidth()I

    move-result v2

    .line 204
    .restart local v2    # "result":I
    :goto_2
    add-int/2addr v2, v1

    .line 205
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 206
    if-eqz p2, :cond_4

    .line 207
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 203
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getSuggestedMinimumHeight()I

    move-result v2

    goto :goto_2

    .line 209
    .restart local v2    # "result":I
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public dp2px(F)F
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 474
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mMaxProgress:I

    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mCurrentProgress:F

    return v0
.end method

.method public getProgressTextSize()F
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextSize:F

    return v0
.end method

.method public getProgressTextVisibility()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mIfDrawText:Z

    return v0
.end method

.method public getReachedBarColor()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarColor:I

    return v0
.end method

.method public getReachedBarHeight()F
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 187
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    float-to-int v1, v1

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextColor:I

    return v0
.end method

.method public getUnreachedBarColor()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarColor:I

    return v0
.end method

.method public getUnreachedBarHeight()F
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 3
    .param p1, "by"    # I

    .prologue
    .line 423
    if-lez p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgress()F

    move-result v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/game91/framework/widget/NumberProgressBar;->setProgress(F)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mListener:Lcom/game91/framework/widget/NumberProgressBar$OnProgressBarListener;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mListener:Lcom/game91/framework/widget/NumberProgressBar$OnProgressBarListener;

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgress()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getMax()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/game91/framework/widget/NumberProgressBar$OnProgressBarListener;->onProgressChange(II)V

    .line 430
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_3

    .line 219
    invoke-direct {p0}, Lcom/game91/framework/widget/NumberProgressBar;->calculateDrawRectF()V

    .line 224
    :goto_0
    iget-boolean v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawReachedBar:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawUnreachedBar:Z

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 232
    :cond_1
    iget-boolean v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mIfDrawText:Z

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mCurrentDrawText:Ljava/lang/String;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextStart:F

    iget v2, p0, Lcom/game91/framework/widget/NumberProgressBar;->mDrawTextEnd:F

    iget-object v3, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    :cond_2
    return-void

    .line 221
    :cond_3
    invoke-direct {p0}, Lcom/game91/framework/widget/NumberProgressBar;->calculateDrawRectFWithoutProgressText()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/game91/framework/widget/NumberProgressBar;->measure(IZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/game91/framework/widget/NumberProgressBar;->measure(IZ)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/game91/framework/widget/NumberProgressBar;->setMeasuredDimension(II)V

    .line 193
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 452
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 453
    check-cast v0, Landroid/os/Bundle;

    .line 454
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextColor:I

    .line 455
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextSize:F

    .line 456
    const-string v1, "reached_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    .line 457
    const-string v1, "unreached_bar_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    .line 458
    const-string v1, "reached_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarColor:I

    .line 459
    const-string v1, "unreached_bar_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarColor:I

    .line 460
    invoke-direct {p0}, Lcom/game91/framework/widget/NumberProgressBar;->initializePainters()V

    .line 461
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/game91/framework/widget/NumberProgressBar;->setMax(I)V

    .line 462
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/game91/framework/widget/NumberProgressBar;->setProgress(F)V

    .line 463
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/game91/framework/widget/NumberProgressBar;->setPrefix(Ljava/lang/String;)V

    .line 464
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/game91/framework/widget/NumberProgressBar;->setSuffix(Ljava/lang/String;)V

    .line 465
    const-string v1, "text_visibility"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->VISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/game91/framework/widget/NumberProgressBar;->setProgressTextVisibility(Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;)V

    .line 466
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 470
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 465
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->INVISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    goto :goto_0

    .line 469
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 436
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgressTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 438
    const-string v1, "reached_bar_height"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getReachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 439
    const-string v1, "unreached_bar_height"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getUnreachedBarHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 440
    const-string v1, "reached_bar_color"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getReachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    const-string v1, "unreached_bar_color"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getUnreachedBarColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 442
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 443
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgress()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "text_visibility"

    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getProgressTextVisibility()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    return-object v0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 370
    if-lez p1, :cond_0

    .line 371
    iput p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mMaxProgress:I

    .line 372
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->invalidate()V

    .line 374
    :cond_0
    return-void
.end method

.method public setOnProgressBarListener(Lcom/game91/framework/widget/NumberProgressBar$OnProgressBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/game91/framework/widget/NumberProgressBar$OnProgressBarListener;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mListener:Lcom/game91/framework/widget/NumberProgressBar$OnProgressBarListener;

    .line 493
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mPrefix:Ljava/lang/String;

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    iput-object p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 360
    iput p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mCurrentProgress:F

    .line 361
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->invalidate()V

    .line 363
    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 393
    iput p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextColor:I

    .line 394
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->invalidate()V

    .line 396
    return-void
.end method

.method public setProgressTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 329
    iput p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextSize:F

    .line 330
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->invalidate()V

    .line 332
    return-void
.end method

.method public setProgressTextVisibility(Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;)V
    .locals 1
    .param p1, "visibility"    # Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    .prologue
    .line 487
    sget-object v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->VISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mIfDrawText:Z

    .line 488
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->invalidate()V

    .line 489
    return-void

    .line 487
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReachedBarColor(I)V
    .locals 2
    .param p1, "progressColor"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarColor:I

    .line 350
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->invalidate()V

    .line 352
    return-void
.end method

.method public setReachedBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 381
    iput p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mReachedBarHeight:F

    .line 382
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 403
    if-nez p1, :cond_0

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mSuffix:Ljava/lang/String;

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iput-object p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mSuffix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUnreachedBarColor(I)V
    .locals 2
    .param p1, "barColor"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarColor:I

    .line 340
    iget-object v0, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->invalidate()V

    .line 342
    return-void
.end method

.method public setUnreachedBarHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 389
    iput p1, p0, Lcom/game91/framework/widget/NumberProgressBar;->mUnreachedBarHeight:F

    .line 390
    return-void
.end method

.method public sp2px(F)F
    .locals 2
    .param p1, "sp"    # F

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/game91/framework/widget/NumberProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 479
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method
