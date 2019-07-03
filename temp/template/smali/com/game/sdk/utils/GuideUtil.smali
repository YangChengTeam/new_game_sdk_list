.class public Lcom/game/sdk/utils/GuideUtil;
.super Ljava/lang/Object;
.source "GuideUtil.java"


# static fields
.field private static instance:Lcom/game/sdk/utils/GuideUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private gHeight:I

.field private gWidth:I

.field private handler:Landroid/os/Handler;

.field private i:I

.field private imgView:Landroid/widget/ImageView;

.field imgs:[I

.field private isFirst:Z

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/utils/GuideUtil;->instance:Lcom/game/sdk/utils/GuideUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/utils/GuideUtil;->isFirst:Z

    .line 23
    iput v1, p0, Lcom/game/sdk/utils/GuideUtil;->i:I

    .line 24
    iput v1, p0, Lcom/game/sdk/utils/GuideUtil;->gWidth:I

    .line 25
    iput v1, p0, Lcom/game/sdk/utils/GuideUtil;->gHeight:I

    .line 39
    new-instance v0, Lcom/game/sdk/utils/GuideUtil$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/utils/GuideUtil$1;-><init>(Lcom/game/sdk/utils/GuideUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/utils/GuideUtil;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/game/sdk/utils/GuideUtil;->gWidth:I

    return v0
.end method

.method static synthetic access$1(Lcom/game/sdk/utils/GuideUtil;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/game/sdk/utils/GuideUtil;->gHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/game/sdk/utils/GuideUtil;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/utils/GuideUtil;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->imgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/utils/GuideUtil;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/utils/GuideUtil;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/game/sdk/utils/GuideUtil;->i:I

    return v0
.end method

.method static synthetic access$6(Lcom/game/sdk/utils/GuideUtil;I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/game/sdk/utils/GuideUtil;->i:I

    return-void
.end method

.method public static getInstance()Lcom/game/sdk/utils/GuideUtil;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/game/sdk/utils/GuideUtil;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/game/sdk/utils/GuideUtil;->instance:Lcom/game/sdk/utils/GuideUtil;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/game/sdk/utils/GuideUtil;

    invoke-direct {v0}, Lcom/game/sdk/utils/GuideUtil;-><init>()V

    sput-object v0, Lcom/game/sdk/utils/GuideUtil;->instance:Lcom/game/sdk/utils/GuideUtil;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object v0, Lcom/game/sdk/utils/GuideUtil;->instance:Lcom/game/sdk/utils/GuideUtil;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public initGuide(Landroid/app/Activity;[III)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "imgs"    # [I
    .param p3, "gwidth"    # I
    .param p4, "gheight"    # I

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/game/sdk/utils/GuideUtil;->isFirst:Z

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/game/sdk/utils/GuideUtil;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/game/sdk/utils/GuideUtil;->imgs:[I

    .line 70
    iput p3, p0, Lcom/game/sdk/utils/GuideUtil;->gWidth:I

    .line 71
    iput p4, p0, Lcom/game/sdk/utils/GuideUtil;->gHeight:I

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "w--->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/game/sdk/utils/GuideUtil;->gWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "---h--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/game/sdk/utils/GuideUtil;->gHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->windowManager:Landroid/view/WindowManager;

    .line 78
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->imgView:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->imgView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/game/sdk/utils/GuideUtil;->gWidth:I

    iget v3, p0, Lcom/game/sdk/utils/GuideUtil;->gHeight:I

    invoke-direct {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->imgView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->imgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    iget-object v0, p0, Lcom/game/sdk/utils/GuideUtil;->imgView:Landroid/widget/ImageView;

    new-instance v1, Lcom/game/sdk/utils/GuideUtil$2;

    invoke-direct {v1, p0, p2}, Lcom/game/sdk/utils/GuideUtil$2;-><init>(Lcom/game/sdk/utils/GuideUtil;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/game/sdk/utils/GuideUtil;->isFirst:Z

    return v0
.end method

.method public setFirst(Z)V
    .locals 0
    .param p1, "isFirst"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/game/sdk/utils/GuideUtil;->isFirst:Z

    .line 107
    return-void
.end method
