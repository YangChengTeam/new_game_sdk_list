.class public Lcom/game91/framework/widget/KeyBoard;
.super Landroid/view/View;
.source "KeyBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game91/framework/widget/KeyBoard$KeyboardListener;
    }
.end annotation


# instance fields
.field private hideListener:Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

.field private manager:Landroid/view/WindowManager;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private realKeyBoardHeight:I

.field private showListener:Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

.field private softKeyboardHeight:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;)V
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;
    .param p2, "paramKeyboardListener1"    # Lcom/game91/framework/widget/KeyBoard$KeyboardListener;
    .param p3, "paramKeyboardListener2"    # Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/game91/framework/widget/KeyBoard;->realKeyBoardHeight:I

    .line 15
    iput v0, p0, Lcom/game91/framework/widget/KeyBoard;->softKeyboardHeight:I

    .line 19
    iput-object p2, p0, Lcom/game91/framework/widget/KeyBoard;->showListener:Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

    .line 20
    iput-object p3, p0, Lcom/game91/framework/widget/KeyBoard;->hideListener:Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

    .line 21
    invoke-direct {p0, p1}, Lcom/game91/framework/widget/KeyBoard;->createView(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method public static bind(Landroid/app/Activity;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;)Lcom/game91/framework/widget/KeyBoard;
    .locals 2
    .param p0, "paramActivity"    # Landroid/app/Activity;
    .param p1, "paramKeyboardListener1"    # Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

    .prologue
    .line 30
    new-instance v0, Lcom/game91/framework/widget/KeyBoard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/game91/framework/widget/KeyBoard;-><init>(Landroid/app/Activity;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;)V

    return-object v0
.end method

.method public static bind(Landroid/app/Activity;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;)Lcom/game91/framework/widget/KeyBoard;
    .locals 1
    .param p0, "paramActivity"    # Landroid/app/Activity;
    .param p1, "paramKeyboardListener1"    # Lcom/game91/framework/widget/KeyBoard$KeyboardListener;
    .param p2, "paramKeyboardListener2"    # Lcom/game91/framework/widget/KeyBoard$KeyboardListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/game91/framework/widget/KeyBoard;

    invoke-direct {v0, p0, p1, p2}, Lcom/game91/framework/widget/KeyBoard;-><init>(Landroid/app/Activity;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;Lcom/game91/framework/widget/KeyBoard$KeyboardListener;)V

    return-object v0
.end method

.method private createView(Landroid/app/Activity;)V
    .locals 3
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->manager:Landroid/view/WindowManager;

    .line 36
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    .line 37
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 38
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 39
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 40
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 41
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 42
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 43
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x20018

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->manager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/game91/framework/widget/KeyBoard;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0}, Lcom/game91/framework/widget/KeyBoard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/game91/framework/widget/KeyBoard;->setSoftKeyboardHeight(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private getStatusBarHeight()I
    .locals 7

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "i":I
    move v1, v0

    .line 52
    .local v1, "j":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/game91/framework/widget/KeyBoard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, "k":I
    move v1, v0

    .line 55
    if-lez v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/game91/framework/widget/KeyBoard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 59
    .end local v2    # "k":I
    :cond_0
    return v1
.end method

.method private isLand()Z
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/game91/framework/widget/KeyBoard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 64
    .local v0, "localWindowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 65
    const/4 v1, 0x1

    .line 67
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSoftKeyboardHeight(Landroid/content/Context;)V
    .locals 2
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/game91/framework/widget/KeyBoard;->softKeyboardHeight:I

    .line 72
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .param p3, "paramInt3"    # I
    .param p4, "paramInt4"    # I

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 76
    invoke-direct {p0}, Lcom/game91/framework/widget/KeyBoard;->isLand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz p4, :cond_0

    if-le p2, p4, :cond_2

    sub-int v0, p2, p4

    invoke-direct {p0}, Lcom/game91/framework/widget/KeyBoard;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 80
    :cond_2
    if-le p2, p4, :cond_5

    sub-int v0, p2, p4

    iget v1, p0, Lcom/game91/framework/widget/KeyBoard;->softKeyboardHeight:I

    if-lt v0, v1, :cond_5

    .line 81
    iget v0, p0, Lcom/game91/framework/widget/KeyBoard;->realKeyBoardHeight:I

    if-nez v0, :cond_3

    .line 82
    sub-int v0, p2, p4

    iput v0, p0, Lcom/game91/framework/widget/KeyBoard;->realKeyBoardHeight:I

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->hideListener:Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->hideListener:Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

    invoke-interface {v0, p2}, Lcom/game91/framework/widget/KeyBoard$KeyboardListener;->onHeightChanged(I)V

    goto :goto_0

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->showListener:Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

    invoke-interface {v0, p2}, Lcom/game91/framework/widget/KeyBoard$KeyboardListener;->onHeightChanged(I)V

    goto :goto_0

    .line 90
    :cond_5
    if-ge p2, p4, :cond_0

    sub-int v0, p4, p2

    iget v1, p0, Lcom/game91/framework/widget/KeyBoard;->softKeyboardHeight:I

    if-lt v0, v1, :cond_0

    .line 91
    iget v0, p0, Lcom/game91/framework/widget/KeyBoard;->realKeyBoardHeight:I

    if-nez v0, :cond_6

    .line 92
    sub-int v0, p4, p2

    iput v0, p0, Lcom/game91/framework/widget/KeyBoard;->realKeyBoardHeight:I

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/game91/framework/widget/KeyBoard;->showListener:Lcom/game91/framework/widget/KeyBoard$KeyboardListener;

    invoke-interface {v0, p2}, Lcom/game91/framework/widget/KeyBoard$KeyboardListener;->onHeightChanged(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/game91/framework/widget/KeyBoard;->manager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/game91/framework/widget/KeyBoard;->manager:Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "localException":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
