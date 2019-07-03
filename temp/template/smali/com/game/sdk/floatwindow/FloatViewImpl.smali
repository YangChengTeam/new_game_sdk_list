.class public Lcom/game/sdk/floatwindow/FloatViewImpl;
.super Ljava/lang/Object;
.source "FloatViewImpl.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "FloatViewImpl"

.field public static dragBitmap:Landroid/graphics/Bitmap;

.field private static instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

.field public static speed:I

.field private static wmParams:Landroid/view/WindowManager$LayoutParams;

.field private static wmParams2:Landroid/view/WindowManager$LayoutParams;

.field private static xfor:I


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isClick:Z

.field private isHolder:Z

.field isOne:Z

.field public leftBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mFloatLayout:Landroid/widget/RelativeLayout;

.field private mFloatView:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private onclick:Landroid/view/View$OnClickListener;

.field public rightBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->speed:I

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isOne:Z

    .line 55
    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isHolder:Z

    .line 361
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$1;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->onclick:Landroid/view/View$OnClickListener;

    .line 65
    invoke-virtual {p0, p1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    return v0
.end method

.method static synthetic access$10(Lcom/game/sdk/floatwindow/FloatViewImpl;IIII)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/game/sdk/floatwindow/FloatViewImpl;->animate(IIII)V

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/floatwindow/FloatViewImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/game/sdk/floatwindow/FloatViewImpl;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setHolder()V

    return-void
.end method

.method static synthetic access$14(Lcom/game/sdk/floatwindow/FloatViewImpl;)Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isHolder:Z

    return v0
.end method

.method static synthetic access$2(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V
    .locals 0

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isHolder:Z

    return-void
.end method

.method static synthetic access$4()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/floatwindow/FloatViewImpl;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isClick:Z

    return-void
.end method

.method static synthetic access$6(Lcom/game/sdk/floatwindow/FloatViewImpl;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$7()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$8(I)V
    .locals 0

    .prologue
    .line 56
    sput p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    return-void
.end method

.method static synthetic access$9(Lcom/game/sdk/floatwindow/FloatViewImpl;I)I
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/game/sdk/floatwindow/FloatViewImpl;->checkXY(I)I

    move-result v0

    return v0
.end method

.method private animate(IIII)V
    .locals 8
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "y1"    # I
    .param p4, "y2"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    const-string v3, "x"

    new-array v4, v7, [I

    aput p1, v4, v5

    aput p2, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 256
    .local v1, "mPropertyValuesX":Landroid/animation/PropertyValuesHolder;
    const-string v3, "y"

    new-array v4, v7, [I

    aput p3, v4, v5

    aput p4, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 257
    .local v2, "mPropertyValuesY":Landroid/animation/PropertyValuesHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v5

    .line 258
    aput-object v2, v3, v6

    .line 257
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 259
    .local v0, "mAnimator":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v3}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    new-instance v3, Lcom/game/sdk/floatwindow/FloatViewImpl$3;

    invoke-direct {v3, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$3;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 274
    new-instance v3, Lcom/game/sdk/floatwindow/FloatViewImpl$4;

    invoke-direct {v3, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$4;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 296
    iget-object v3, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    return-void
.end method

.method private checkXY(I)I
    .locals 5
    .param p1, "y"    # I

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42480000    # 50.0f

    .line 166
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v0

    .line 167
    .local v0, "height":I
    sget-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int p1, v0, v1

    .line 171
    :cond_0
    sget-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 172
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkXY-->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 175
    return p1
.end method

.method private createFloatView()V
    .locals 7

    .prologue
    const/16 v6, 0x33

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 109
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 110
    sput v3, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    .line 111
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 112
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 114
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 116
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x4000408

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 119
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 125
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 126
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 127
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, -0xb4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 130
    :cond_0
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    .line 132
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 134
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 136
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x4000408

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 138
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 143
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 146
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams2:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/game/sdk/utils/DimensionUtil;->getHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, -0xb4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 153
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 154
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 157
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->inflater:Landroid/view/LayoutInflater;

    .line 158
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "float_layout"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 157
    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->init()V

    .line 163
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const-class v1, Lcom/game/sdk/floatwindow/FloatViewImpl;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v0

    sput-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    .line 71
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 74
    :cond_0
    sget-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideFloat()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    return-void
.end method

.method private init()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "iv_float"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Lcom/game/sdk/floatwindow/FloatViewImpl$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$2;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->onclick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method private setBackground(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 307
    const-string v0, "float_holder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->leftBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_0
    const-string v0, "float_holder2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->rightBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :cond_1
    const-string v0, "float_drag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_2
    return-void
.end method

.method private setBackground2(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 322
    return-void
.end method

.method private setHolder()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->isHolder:Z

    .line 328
    sget v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->xfor:I

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl$5;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$5;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-static {v2, v3, v0}, Lcom/game/sdk/utils/Util;->postDelayed(JLjava/lang/Runnable;)V

    .line 349
    :goto_0
    return-void

    .line 339
    :cond_0
    new-instance v0, Lcom/game/sdk/floatwindow/FloatViewImpl$6;

    invoke-direct {v0, p0}, Lcom/game/sdk/floatwindow/FloatViewImpl$6;-><init>(Lcom/game/sdk/floatwindow/FloatViewImpl;)V

    invoke-static {v2, v3, v0}, Lcom/game/sdk/utils/Util;->postDelayed(JLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setMenuOut()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method


# virtual methods
.method public ShowFloat()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 399
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->setHolder()V

    .line 400
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    .line 84
    :try_start_0
    const-string v1, "drag_image"

    invoke-static {p1, v1}, Lcom/game/sdk/utils/Util;->getLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    .line 86
    sget-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_drag"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/floatwindow/FloatViewImpl;->dragBitmap:Landroid/graphics/Bitmap;

    .line 90
    :cond_1
    const-string v1, "drag_left_image"

    invoke-static {p1, v1}, Lcom/game/sdk/utils/Util;->getLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->leftBitmap:Landroid/graphics/Bitmap;

    .line 91
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->leftBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_holder"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->leftBitmap:Landroid/graphics/Bitmap;

    .line 95
    :cond_2
    const-string v1, "drag_right_image"

    invoke-static {p1, v1}, Lcom/game/sdk/utils/Util;->getLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->rightBitmap:Landroid/graphics/Bitmap;

    .line 96
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->rightBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "float_holder2"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->rightBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->createFloatView()V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FloatViewImpl image error --- "

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public removeFloat()V
    .locals 2

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatViewImpl;->mFloatLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/floatwindow/FloatViewImpl;->instance:Lcom/game/sdk/floatwindow/FloatViewImpl;

    .line 394
    return-void

    .line 391
    :catch_0
    move-exception v0

    goto :goto_0
.end method
