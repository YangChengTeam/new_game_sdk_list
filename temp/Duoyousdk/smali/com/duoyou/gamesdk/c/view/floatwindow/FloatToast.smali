.class Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;
.super Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;


# instance fields
.field private hide:Ljava/lang/reflect/Method;

.field private mHeight:I

.field private mTN:Ljava/lang/Object;

.field private mWidth:I

.field private show:Ljava/lang/reflect/Method;

.field private toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatView;-><init>()V

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->toast:Landroid/widget/Toast;

    return-void
.end method

.method private initTN()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "show"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->show:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hide"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->hide:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mParams"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mNextView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->hide:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->show:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mTN:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGravity(III)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mWidth:I

    iput p2, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->mHeight:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/floatwindow/FloatToast;->initTN()V

    return-void
.end method
